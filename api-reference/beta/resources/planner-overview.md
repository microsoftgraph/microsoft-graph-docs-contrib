---
title: "Use the Planner REST API"
description: "You can use the Planner API in Microsoft Graph to create tasks and assign them to users in a group in Microsoft 365."
author: "TarkanSevilmis"
ms.localizationpriority: high
ms.subservice: "planner"
doc_type: conceptualPageType
ms.date: 03/06/2024
---

# Use the Planner REST API

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

You can use the Planner API in Microsoft Graph to create tasks and assign them to users in a group in Microsoft 365.

Before you get started with the Planner API, it's helpful to understand how the main objects relate to each other and to Microsoft 365 groups.

## Resource models for Planner Basic plans Graph API and Planner Unified plans Graph API

The Planner beta API exposes two resource families. The Planner Basic plans Graph API uses [plannerPlan](../resources/plannerplan.md), [plannerTask](../resources/plannertask.md), and [plannerBucket](../resources/plannerbucket.md). The Planner Unified plans Graph API uses [plan](../resources/plan.md), [task](../resources/task.md), and [bucket](../resources/bucket.md). These are distinct Planner resource models; both use the Microsoft Graph `/beta` version segment in this reference.

The plan and task collections in the Planner Unified plans Graph API use `/planner/plans_v2` and `/planner/tasks_v2`. Buckets are scoped to a plan. The Planner Unified plans Graph API supports creating, reading, updating, and deleting plans, tasks, and buckets. Its task resource exposes notes and related collections directly; there's no separate task-details object. Don't apply request shapes or response conventions from the Planner Basic plans Graph API to Planner Unified plans Graph API operations.

Not every related type supports standalone CRUD. Use the operations listed on each resource, rather than inferring write support from a property or navigation relationship.

Feature availability in the Planner Unified plans Graph API depends on the plan's capabilities. When updating or deleting an entity, use its complete returned ETag as `If-Match`, and follow the response contract on that operation's page.

## Supported deep-insert scenarios in Planner Unified plans Graph API

A **deep insert** creates a parent and related objects in one POST request. Use [Create plan](../api/planner-post-plans_v2.md) (`POST /planner/plans_v2`) or [Create task](../api/planner-post-tasks_v2.md) (`POST /planner/tasks_v2`), and include the new related objects as arrays in the parent's JSON request body.

|Parent|Collection|Supported scenario|
|:---|:---|:---|
|Plan|`contexts`|Create a plan with [context links](../resources/plancontextlink.md) to surfaces such as Teams tabs, SharePoint pages, meeting notes, Loop pages, projects, or other contexts. These links don't create the referenced surfaces.|
|Plan|`links`|Create a plan with [content links](../resources/contentlink.md) to existing content.|
|Task|`checklist`|Create a task with one or more [checklist items](../resources/checklistitemv4.md), including their display names and checked states.|
|Task|`links`|Create a task with [content links](../resources/contentlink.md) to existing content.|
|Task|`userAssignments`|Create a task with [assignments](../resources/userassignment.md) to existing users. Identify each assignee by `user.id`; this doesn't create a user.|

You can combine supported collections in the same request. For example, create a task with checklist items, content links, and user assignments together, or create a plan with both context links and content links. Each collection can contain multiple objects, subject to the applicable limits and plan capabilities.

For request examples, see [Create a task with checklist items and assignees](../api/planner-post-tasks_v2.md#example-2-create-a-task-with-checklist-items-and-assignees) and [Create a plan with a context link](../api/planner-post-plans_v2.md#example-2-create-a-plan-with-a-context-link).

### Feature-dependent deep inserts

The following additional scenarios have availability restrictions. Don't assume that they're enabled for every tenant, deployment, or plan.

|Parent|Collection|Scenario and prerequisites|
|:---|:---|:---|
|Plan|`planView.categories`|Initialize [category definitions](../resources/categorydefinition.md) when category writes are enabled. Supply up to 25 entries in the `categories` array inside `planView`; entries are assigned category slots in array order. If category writes aren't enabled, the supplied category entries are ignored and the plan retains its default categories.|
|Task|`customFieldValues`|Create [custom field values](../resources/customfieldvalue.md) when custom-field functionality is enabled for the tenant and supported by the plan. Each `customFieldDefinitionId` must reference an existing [custom field definition](../resources/customfielddefinition.md) in the same plan. Supply a nonempty string `value` in the format required by that definition. This doesn't create field definitions or choice options.|

When enabled, these collections can also be supplied with the other supported collections on the same parent. Their availability and validation requirements still apply.

### Request rules and limitations

Omit collections that you don't need, or supply empty arrays. Don't send `null` for a collection. The service generates identifiers and audit metadata for the new related objects; don't copy read-only fields from a GET response into the create request.

Deep-insert support is limited to the collections listed here. Creating a plan with nested tasks, buckets, goals, custom field definitions, dependencies, or history items isn't supported. Creating a task with nested chat messages isn't supported, and creating a bucket doesn't create tasks. Setting identifiers such as `bucketId`, `parentTaskId`, or `goalIds` references existing objects; it doesn't create those objects.

Supplying writable complex properties, such as `container`, `notes`, or calendar settings, isn't an independent child-resource create operation. Deep insert also doesn't imply standalone POST support on a child collection, collection replacement during PATCH, or `$ref` support.

The following sections describe the Planner Basic plans Graph API resource model and its conventions.

## Plan containers
In Microsoft Planner, plans are always contained in another resource. The containing resource, [plannerPlanContainer](../resources/plannerplancontainer.md), determines the authorization rules of the plan and all the tasks in it, and the lifecycle of the plan. You can create a plan in a container of one of the following types: [driveItem](../resources/driveitem.md), Microsoft 365 [group](../resources/group.md), [plannerTask](../resources/plannertask.md), Planner project, [roster](../resources/plannerroster.md), [teamsChannel](../resources/channel.md), or [user](../resources/user.md).

The most common type of container is a group.

### Container type: Microsoft 365 groups

Plans are commonly contained in groups in the Planner API.

Group members are able to create, edit, resolve, and delete tasks in the plan. Group members can also change some plan-level properties, such as the name of the plan or label names. Additionally, when the group is deleted, all the plans in the group are automatically deleted. Conversely if a group is restored, then all the plans are automatically restored.

To [get the plans owned by a group](../api/plannergroup-list-plans.md), make the following HTTP request.

```http
GET /groups/{group-id}/planner/plans
```

When you [create a new plan](../api/planner-post-plans.md), set the **container** property on a plan object to make a group its container. Plans must be contained by a supported resource.

>**Note:** The user who creates the plan must be a member of the group that contains the plan. When you create a new group by using [Create group](../api/group-post-groups.md), you aren't added to the group as a member. After the group is created, add yourself as a member by using [group post members](../api/group-post-members.md).

### Container type: Planner task

The `plannerTask` container type supports plans to be contained by a Planner task. Plans contained by a Planner task are deleted when the task is deleted.

To [create a new plan](../api/planner-post-plans.md) in the container of a Planner task, set the **container** property on a [plan](../resources/plannerplan.md) object with **type** set to `plannerTask`, and set **id** to the ID of the Planner task.

```json
{
    "container": {
        "id": "{task-id}",
        "type": "plannerTask"
    }
}
```

Alternatively, you can specify the URL for a Planner task.

```json
{
    "container": {
        "url": "https://graph.microsoft.com/beta/planner/tasks/{task-id}"
    }
}
```

### Container type: Teams channel

The `teamsChannel` container type supports plans created in shared channels in Teams, where the channel is the container for the plan. Plans that are pinned in shared channels are deleted when the channel is deleted.

To [create a new plan](../api/planner-post-plans.md) in the container of a Teams channel, set the **container** property on a [plan](../resources/plannerplan.md) object with **type** as `teamsChannel`, and the **id** should be formatted as "{team-id}/channels/{channel-id}".

```json
{
    "container": {
        "id": "{team-id}/channels/{channel-id}",
        "type": "teamsChannel"
    }
}
```

Alternatively, you can specify the URL for a shared channel in Teams.

```json
{
    "container": {
        "url": "https://graph.microsoft.com/beta/teams/{team-id}/channels/{channel-id}"
    }
}
```

### Container type: User

The user container type supports personal plans, where the user is the only user tracking their individual tasks. This provides the flexibility for users to share or collaborate on their personal plans. Plans that are created for a single user are automatically deleted when the user is deleted.

To [create a new plan](../api/planner-post-plans.md) in a user's container, set the **container** property on a [plan](../resources/plannerplan.md) object with **type** being `user`.

```json
{
    "container": {
        "id": "00000000-0000-0000-0000-000000000000",
        "type": "user"
    }
}
```

Alternatively, you can specify the URL for a user.

```json
{
    "container": {
        "url": "https://graph.microsoft.com/beta/users/{id}"
    }
}
```

Users can upgrade their personal plans into group-based plans by [moving](../api/plannerplan-movetocontainer.md) the plan from the user container to a group container, changing the type of the container for the plan from `user` to `group`. 

## Plans

[Plans](../resources/plannerplan.md) are the containers of [tasks](../resources/plannertask.md).
To [create a task in a plan](../api/planner-post-tasks.md), set the **planId** property on the task object to the ID of the plan while creating the task.
Tasks currently can't be created without plans.
To [retrieve the tasks in a plan](../api/plannerplan-list-tasks.md), make the following HTTP request.

```http
GET /planner/plans/{plan-id}/tasks
```

## Goals

[Goals](../resources/plannergoal.md) express the high-level outcomes that a set of tasks in a plan is intended to accomplish. A plan can have multiple goals, and a task can be associated with multiple goals.

To [retrieve the goals in a plan](../api/plannerplan-list-goals.md), make the following HTTP request.

```http
GET /planner/plans/{plan-id}/goals
```

Use the read-only **goalIds** property on a [plannerTask](../resources/plannertask.md) object to identify the goals associated with the task.

## Tasks

Each task can be assigned to a user by adding an [assignment](../resources/plannerassignment.md) in the [assignments](../resources/plannerassignments.md) property on the task object.
The ID of the user to assign the task is the name of the open property on **assignments**, and the **orderHint** property on the assignment must be specified.

## Task and plan details

Planner resources are arranged into basic objects and detail objects. Basic objects provide access to common properties of the resources, suitable for list views, while the detail objects provide access to large properties of the resources suitable for drill-down views.

## Visualization

Aside from task and plan data, the Planner API also provides resources for creating a common visualization of data across clients. Several types of visualization data are available for tasks, as listed in the following table.

| Tasks are shown as                                                                        | Tasks are ordered with information from                                         |
| :---------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------ |
| Flat list (tasks in a plan)                                                               | **orderHint** property on tasks                                                   |
| Flat list (tasks assigned to a user)                                                      | **assigneePriority** property on tasks                                            |
| Board view with columns for assignees (assigned to task board)                            | [assignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md) object |
| Board view with columns for progress of the task towards completion (progress task board) | [progressTaskBoardTaskFormat](../resources/plannerprogresstaskboardtaskformat.md) object     |
| Board view with custom columns of tasks (bucket task board):                              | [bucketTaskBoardTaskFormat](../resources/plannerbuckettaskboardtaskformat.md) object         |

The custom columns in the bucket task board are represented by [bucket](../resources/plannerbucket.md) objects, and their order by **orderHint** property on the object.

The ordering principles are described in [Planner order hints](../resources/planner-order-hint-format.md).

## <a name="delta">Track changes using delta query</a>

Planner's delta query supports querying objects that the user is subscribed to.

Users are subscribed to the following objects.

| Planner resource type | Subscribed instances                                                                                                                                                                                    |
| :-------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **tasks**                 | <ul><li>Created by the user</li><li>Assigned to the user</li><li>Belong to a plan that the user owns</li><li>Contained in a plan shared with the user through the plan's **sharedWith** collection</li></ul> |
| **plans**                 | <ul><li>Shared with the user through the plan's **sharedWith** collection</li></ul>                                                                                                                     |
| **buckets**               | <ul><li>Contained in a plan shared with the user through the plan's **sharedWith** collection</li></ul>                                                                                                 |

### <a name="objectcache">Populate the object cache for delta queries</a>

If you want to use the Planner delta query API, maintain a local cache of objects that the user is interested in observing in order to apply the changes from the delta response feed.

The delta payload objects that the Planner delta query can currently return are of the following types:

* [plannerTask](../resources/plannertask.md)
* [plannerTaskDetails](../resources/plannertaskdetails.md)
* [plannerPlan](../resources/plannerplan.md)
* [plannerPlanDetails](../resources/plannerplandetails.md)
* [plannerBucket](../resources/plannerbucket.md)
* [plannerAssignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md)
* [plannerBucketTaskBoardTaskFormat](../resources/plannerbuckettaskboardtaskformat.md)
* [plannerAssignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md)

Use the corresponding `GET` methods on the resource to obtain the initial state of objects to be populated into the local cache.


### Looking at history for the plan

Planner supports an [API](../api/plannerplan-list-historyitems.md) to get the [history](../resources/plannerhistoryitem.md) of changes made to [tasks](../resources/plannertask.md) within a [plan](../resources/plannerplan.md).

### Differentiating between object creation and object modification

In certain scenarios, the caller might want to distinguish between object creation and object modification within Planner's delta query feed.

These guidelines can be used to infer object creation:

* The **createdBy** property appears on newly created objects.
* A newly created **plannerTask** object is followed by its corresponding **plannerTaskDetails** object.
* A newly created **plannerPlan** object is followed by its corresponding **plannerPlanDetails** object.

### Usage

The caller is expected to have a cache containing subscribed objects. For details about how to fill the local cache of subscribed objects, see [Populate the object cache for delta queries](#populate-the-object-cache-for-delta-queries).

Planner's delta query call flow is as follows:

1. The caller initiates a delta sync query, obtaining a `nextLink` and an empty collection of changes.
2. The caller must [populate the object cache for delta queries](#populate-the-object-cache-for-delta-queries) with objects that the user is subscribed to, updating its cache.
3. The caller follows the `nextLink` provided in the initial delta sync query to obtain a new `deltaLink` to any changes since previous step.
4. The caller applies the changes in the returned delta response to the objects in its cache.
5. The caller follows the new `deltaLink` to obtain the next `deltaLink` and changes since the current `deltaLink` was generated.
6. The caller applies the changes (if any) and waits a short time before rerunning the previous step and this step.

## Planner resource versioning

Planner versions all resources using etags. These etags are returned with **@odata.etag** property on each resource. `PATCH` and `DELETE` requests require the last etag known by the client to be specified with a `If-Match` header.
Planner allows changes to older versions of resources, if the intended change doesn't conflict with newer changes accepted by the Planner service on the same resource. The clients can identify which etag for the same resource is newer by calculating which etag value is greater in ordinal string comparison.
Each resource has a unique etag. Etag values for different resources, including resources with containment relationships, can't be compared.
The client apps are expected to handle versioning related [error codes](/graph/errors) `409` and `412` by reading the latest version of the item and resolving the conflicting changes.

## Common Planner error conditions

In addition to [general errors](/graph/errors) that apply to Microsoft Graph, some error conditions are specific to the Planner API.

### 400 Bad request

In some common scenarios, `POST` and `PATCH` requests can return a 400 status code. The following are some of the common causes:

* Open Type properties had the wrong type specified or no type specified, or didn't contain any properties. For example, [plannerAssignments](../resources/plannerassignments.md) properties with complex values need to declare **@odata.type** property with value `microsoft.graph.plannerAssignment`.
* Order hint values didn't have the [correct format](../resources/planner-order-hint-format.md). For example, an order hint value was set directly to the value returned to the client.
* The data is logically inconsistent. For example, start date of task is later than due date of the task.

### 403 Forbidden

In addition to the general errors, the Planner API also returns the `403` status code when a service-defined limit is exceeded. If so, the **code** property on the error resource type indicates the type of the limit exceeded by the request.
The following are the possible values for the limit types.

| Value                         | Description                                                                                                                                                                                              |
| :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| MaximumProjectsOwnedByUser    | The maximum number of plans contained by a group limit was exceeded. The **container** property of the [plannerPlan](../resources/plannerplan.md) resource determines this limit. |
| MaximumProjectsSharedWithUser | The maximum number of plans shared with a user limit was exceeded.  The **sharedWith** property on the [plannerPlanDetails](../resources/plannerplandetails.md) resource determines this limit.                   |
| MaximumTasksCreatedByUser     | The maximum number of tasks created by a user limit was exceeded. The **createdBy** property on the [plannerTask](../resources/plannertask.md) resource determines this limit.                                    |
| MaximumTasksAssignedToUser    | The maximum number of tasks assigned to a user limit was exceeded. The **assignments** property on the [plannerTask](../resources/plannertask.md) resource determines this limit.                                 |
| MaximumTasksInProject         | The maximum number of tasks in a plan limit was exceeded. The **planId** property on the [plannerTask](../resources/plannertask.md) resource determines this limit.                                               |
| MaximumActiveTasksInProject   | The maximum number of tasks that aren't completed in a plan limit was exceeded. The **planId** and **percentComplete** properties on the [plannerTask](../resources/plannertask.md) resource determines this limit. |
| MaximumBucketsInProject       | The maximum number of buckets in a plan limit was exceeded. The **planId** property on the [plannerBucket](../resources/plannerbucket.md) resource determines this limit.                                         |
| MaximumUsersSharedWithProject | The **sharedWith** property on the [plannerPlanDetails](../resources/plannerplandetails.md) resource contains too many values.                                                                                          |
| MaximumReferencesOnTask       | The **references** property on the [plannerTaskDetails](../resources/plannertaskdetails.md) resource contains too many values.                                                                                          |
| MaximumChecklistItemsOnTask   | The **checklist** property on the [plannerTaskDetails](../resources/plannertaskdetails.md) resource contains too many values.                                                                                           |
| MaximumAssigneesInTasks       | The **assignments** property on the [plannerTask](../resources/plannertask.md) resource contains too many values.                                                                                                       |
| MaximumFavoritePlansForUser   | The **favoritePlanReferences** property on the [plannerUser](../resources/planneruser.md) resource contains too many values.                                                                                            |
| MaximumRecentPlansForUser     | The **recentPlanReferences** property on the [plannerUser](../resources/planneruser.md) resource contains too many values.                                                                                              |
| MaximumContextsOnPlan         | The **contexts** property on the [plannerPlan](../resources/plannerplan.md) resource contains too many values.                                                                                                          |

### 412 Precondition Failed

All Planner API `POST`, `PATCH`, and `DELETE` requests require the `If-Match` header to be specified with the last known etag value of the resource that is subject to the request.
The 412 status code can also be returned if the etag value specified in the request no longer matches a version of the resource in the service. In this case, the clients should read the resource again and get a new etag.
