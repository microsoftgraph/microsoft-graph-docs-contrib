# Planner
The new Office 365 Planner API enables you to create tasks and assign them to users in a group in Office 365.

## Basics
Before you get started with trying out the Planner API, it is worth understanding how the main objects in Planner API relate to each other as well as Office 365 groups.

## Groups
Office 365 groups are the owners of the plans in the Planner API.
To [get the plans owned by a group](../api/plannergroup_list_plans.md), make the HTTP request below.

```http
GET /groups/{id}/planner/plans
```

When [creating a new plan](../api/planner_post_plans.md), you need to make a group its owner by simply setting the `owner` property on a plan object. 

**Note that you need to ensure that the user who is creating the plan is a member of the group. When you create a new group using the API, you are not automatically added to the group as a member. This has to be done using a separate API call.** 

## Plans
[Plans](plannerplan.md) are the containers of [tasks](plannertask.md). 
To [create a task in a plan](../api/planner_post_tasks.md), set the `planId` property on the task object to the id of the plan while creating the task.
Tasks currently cannot be created without plans.
To [retrieve the tasks in a plan](../api/plannerplan_list_tasks.md), make the HTTP request below.

```http
GET /planner/plans/{id}/tasks
```

## Tasks
Each task can be assigned to a user by adding an [assignment](plannerassignment.md) setting the [assignments](plannerassignments.md) property on the task object.
The id of the user to assign the task is the name of the open property on `assignments`, and the `orderHint` property on the assignment must be specified.

## Task and Plan Details 
Planner resources are arranged into basic objects and detail objects. Basic objects provide access to common properties of the resources, suitable for list views, while the detail objects provide access to large properties of the resources suitable for drill down views.

## Visualization
Aside from task and plan data, Planner API also provides resources to provide common visualization of data across clients. There are several different types of visualization data available for tasks:

* Flat list of tasks in a plan: Order of the tasks are indicated by `orderHint` property on tasks
* Flat list of tasks assigned to a user: Order of the tasks are indicated by `assigneePriority` property on tasks
* Board view of tasks with columns for assignees (assigned to task board): Order of the tasks in each column are indicated by [assignedToTaskBoardTaskFormat](plannerassignedToTaskBoardTaskFormat.md) object
* Board view of tasks with columns for progress of the task towards completion (progress task board): Order of the tasks in each column are indicated by [progressTaskBoardTaskFormat](plannerprogressTaskBoardTaskFormat.md) object
* Board view of tasks with custom columns of tasks (bucket task board): Order of the tasks in each column are indicated by [bucketTaskBoardTaskFormat](plannerbucketTaskBoardTaskFormat.md) object
	* The custom columns are represented by [bucket](plannerbucket.md) objects, and their order by `orderHint` property on the object.

All the ordering is controlled by the principles identified in [Planner order hints](planner_order_hint_format.md).

## API reference
The links on the left show the objects available in the Planner API. 
Each object page link contains a description of the properties, relationships, and methods available on the object.
Explore the links on the left to learn more.