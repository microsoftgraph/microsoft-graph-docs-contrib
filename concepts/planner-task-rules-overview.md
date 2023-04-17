---
title: "Configuring task rules in Planner (preview)"
description: "Rules allow customization of what can and can't be done on tasks, and the Planner API in Microsoft Graph supports them."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
---

# Configuring task rules in Planner (preview)

The Planner API in Microsoft Graph supports rules, which allow customization of what can and can't be done on tasks. Task rules can be specified for tasks created from various sources, such as [business scenarios](/graph/api/resources/businessscenario-planner-overview).

Task property rules are represented by the [plannerTaskPropertyRule](/graph/api/resources/plannertaskpropertyrule) entity and describe the allowed actions at the task-level and rules around each configurable property.

Depending on the specific entry, the rules specify either a collection of values or a [fieldRules](/graph/api/resources/plannerfieldrules) object. Field rules specify a collection of values as default, and provide a separate collection of values for override conditions. For any collection of values, the specified values are what is allowed; omitted values aren't allowed.

In this article, you will learn the behaviors associated with each entry and the override conditions supported by each property.

## Configurable actions

### delete

Specifies whether the task can be deleted. Accepted values are:

* `block`: Task can't be deleted.
* `allow`: Task can be deleted.

The collection must contain only one of these values.

### move

Specifies whether the task can be moved. This only includes a task moving between [buckets](/graph/api/resources/plannerbucket) and [plans](/graph/api/resources/plannerplan) with the same or different [containers](/graph/api/resources/plannerplancontainer). However, it doesn't include other operations similar to moves, which can be configured independently, such as assignments, ordering of the task, percent complete, or priority. Accepted values are:

* `block`: Task can't be moved.
* `moveBetweenBuckets`: Task can only be moved between the buckets of the plan it is in.
* `moveBetweenPlans`: Task can be moved between buckets and across the plans that belong to the same container.
* `allow`: Task can be moved between buckets and across plans.

The collection must contain only one of these values.

### order

Specifies whether the task can be reordered in shared views. Accepted values are:

* `block`: Task can't be reordered.
* `allow`: Task can be reordered.

The collection must contain only one of these values.

## Configurable properties

### appliedCategories

The **appliedCategories** property is configured with [fieldRules](/graph/api/resources/plannerfieldrules), providing default values and overrides for specific conditions. Accepted values are:

* `block`: Applied categories can't be changed.
* `allow`: Categories can be added or removed.

The collection must contain only one of these values.

This property doesn't support any override conditions. The rules must be specified in the **defaultRules** property.

### assignments

The **assignments** property is configured with [fieldRules](/graph/api/resources/plannerfieldrules), providing default values and overrides for specific conditions. Accepted values are:

* `block`: Assignments of the task can't be changed.
* `addSelf`: Users can assign the task to themselves.
* `removeSelf`: Users can remove themselves as assignees.
* `addOther`: Users can assign the task to people other than themselves.
* `removeOther`: Users can remove assignees other than themselves.
* `add`: Assignees can be added.
* `remove`: Assignees can be removed.
* `allow`: Assignees can be added or removed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

This property supports the following override conditions. If an override doesn't have rules specified, the values specified for the **defaultRules** property applies instead. The **defaultRules** must be specified.

* `userCreated`: Rules apply if the assignment was created by a user.
* `applicationCreated`: Rules apply if the assignment was created using application permissions.

### checkLists

The **checkLists** property is configured with [fieldRules](/graph/api/resources/plannerfieldrules), providing default values and overrides for specific conditions. Accepted values are:

* `block`: Checklist can't be changed.
* `check`: Checklist items can be checked.
* `reorder`: Checklist items can be reordered.
* `add`: New checklist items can be added.
* `update`: Existing checklist items can be updated.
* `remove`: Existing checklist items can be removed.
* `allow`: All checklist actions are allowed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

This property supports the following override conditions. If an override doesn't have rules specified, the values specified for the **defaultRules** property applies instead. The **defaultRules** must be specified.

* `userCreated`: Rules apply if the checklist item was created by a user.
* `applicationCreated`: Rules apply if the checklist item was created using application permissions.

### completionRequirements

Specifies whether the task **completionRequirements** property can be changed. Accepted values are:

* `block`: The task **completionRequirements** property can't be changed.
* `add`: New completion requirements can be added.
* `edit`: Existing completion requirements can be edited.
* `remove`: Existing completion requirements can be removed.
* `allow`: The task **completionRequirements** property can be changed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

### dueDate

Specifies whether the task due date can be changed. Accepted values are:

* `block`: Task due date can't be changed.
* `allow`: Task due date can be changed, added, or removed.

The collection must contain only one of these values.

### notes

Specifies whether the task notes can be changed. Accepted values are:

* `block`: Task notes can't be changed.
* `allow`: Task notes can be changed.

The collection must contain only one of these values.

### percentComplete

Specifies whether the task **percentComplete** property can be changed. Accepted values are:

* `block`: The task **percentComplete** property can't be changed.
* `setToComplete`: The task **percentComplete** property can be set to `100` after completion requirements are met.
* `overrideRequirements`: The task **percentComplete** property can be set to `100` even if completion requirements are not met.
* `setToInProgress`: The task **percentComplete** property can be set to values from `1` to `99`.
* `setToNotStarted`: The task **percentComplete** property can be set to `0`.
* `allow`: The task **percentComplete** property can be changed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

### previewType

Specifies whether the task preview type can be changed. Accepted values are:

* `block`: Task preview type can't be changed.
* `allow`: Task preview type can be changed.

The collection must contain only one of these values.

### priority

Specifies whether the task priority can be changed. Accepted values are:

* `block`: Task priority can't be changed.
* `allow`: Task priority can be changed.

The collection must contain only one of these values.

### references

The**references** property is configured with [fieldRules](/graph/api/resources/plannerfieldrules), providing default values and overrides for specific conditions. Accepted values are:

* `block`: Task references can't be changed.
* `add`: New references can be added.
* `remove`: Existing references can be removed.
* `allow`: All task reference actions are allowed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

This property supports the following override conditions. If an override doesn't have rules specified, the values specified for the **defaultRules** property apply instead. The **defaultRules** must be specified.

* `userCreated`: Rules apply if the task reference was created by a user.
* `applicationCreated`: Rules apply if the task reference was created using application permissions.

### startDate

Specifies whether the task start date can be changed. Accepted values are:

* `block`: Task start date can't be changed.
* `allow`: Task start date can be changed.

The collection must contain only one of these values.

### title

Specifies whether the task title can be changed. Accepted values are:

* `block`: Task title can't be changed.
* `allow`: Task title can be changed.

The collection must contain only one of these values.
