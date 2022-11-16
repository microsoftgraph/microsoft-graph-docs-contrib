---
title: "Planner Task Rules Overview"
description: ""
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: ""
---

# Planner Task Rules

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Rules allow customization of what can and cannot be done on tasks. Task rules can be specified for tasks created from various sources, such as [Business Scenarios](businessscenario-planner-overview.md).

Task property rules are represented by [plannerTaskPropertyRule](plannertaskpropertyrule.md) entity and describe the the allowed actions at the task level and rules around each configurable property. This document explains the behaviors associated with each entry.

Depending on the specific entry has either a collection of values or a [fieldRules](plannerfieldrules.md) is specified. Field rules specify a collection of values as default, and provides separate collection of values for override conditions. Override conditions supported by each property are described in the property documentation below. For any collection of values, the specified values are what is allowed, omitted values will be disallowed.

## Configurable Actions

### delete

Specifies if the task can be deleted. Accepted values are:

* `block` : Task cannot be deleted.
* `allow` : Task can be deleted.

The collection must contain only one of these values.

### move

Specifies if the task can be moved. This only includes task moving between [buckets](plannerbucket.md), [plans](plannerplan.md) with the same or different [containers](plannerplancontainer.md). However it does not include other operations that may look like moves, which can be configured independently, such as assignments, ordering of the task, percentComplete, priority etc. Accepted values are:

* `block` : Task cannot be moved.
* `moveBetweenBuckets` : Task can only be moved between the buckets of the plan it is in.
* `moveBetweenPlans` : Task can be moved between buckets and across the plans that belong to the same container.
* `allow` : Task can be moved between buckets and across plans.

The collection must contain only one of these values.

### order

Specifies if the task can be reordered in shared views. Accepted values are:

* `block` : Task cannot be reordered.
* `allow` : Task can be reordered.

The collection must contain only one of these values.

## Configurable Properties

### appliedCategories

AppliedCategories property is configured with [fieldRules](plannerfieldrules.md) providing default values and overrides for specific conditions. Accepted values are:

* `block` : Applied categories cannot be changed.
* `allow` : Categories can be added or removed.

The collection must contain only one of these values.

This property doesn't support any override conditions, the rules must be specified in the **defaultRules** property.

### assignments

Assignments property is configued with [fieldRules](plannerfieldrules.md) providing default values and overrides for specific conditions. Accepted values are:

* `block` : Assignments of the task cannot be changed.
* `addSelf` : Users can assign the task to themselves.
* `removeSelf` : Users can remove themselves as assignees.
* `addOther` : Users can assign the task to people other than themselves.
* `removeOther` : Users can remove assignees other than themselves.
* `add` : Assignees can be added.
* `remove` : Assignees can be removed.
* `allow` : Assignees can be added or removed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

This property supports the following override conditions. If the an override doesn't have rules specified, the values specified for the **defaultRules** property will apply instead.

* `userCreated` : Rules apply if the assignment was created by a user.
* `applicationCreated` : Rules apply if the assignment was created using application permissions.

### checkLists

Checklists property is configued with [fieldRules](plannerfieldrules.md) providing default values and overrides for specific conditions. Accepted values are:

* `block` : Checklist cannot be changed.
* `check` : Checklist items can be checked.
* `reorder` : Checklist items can be reordered.
* `add` : New checklist items can be added.
* `update` : Existing checklist items can be updated.
* `remove` : Existing checklist items can be removed.
* `allow` : All checklist actions are allowed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

This property supports the following override conditions. If the an override doesn't have rules specified, the values specified for the **defaultRules** property will apply instead.

* `userCreated` : Rules apply if the checklist item was created by a user.
* `applicationCreated` : Rules apply if the checklist item was created using application permissions.

### dueDate

Specifies if the task due date can be changed. Accepted values are:

* `block` : Task due date cannot be changed.
* `allow` : Task due date can be changed, added or removed.

The collection must contain only one of these values.

### notes

Specifies if the task notes can be changed. Accepted values are:

* `block` : Task notes cannot be changed.
* `allow` : Task notes can be changed.

The collection must contain only one of these values.

### percentComplete

Specifies if the task percentComplete property can be changed. Accepted values are:

* `block` : Task percentComplete property cannot be changed.
* `setToComplete` : Task percentComplete property can be set to 100.
* `setToInProgress` : Task percentComplete property can be set to values from 1 to 99.
* `setToNotStarted` : Task percentComplete property can be set to 0.
* `allow` : Task percentComplete property can be changed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

### previewType

Specifies if the task preview type can be changed. Accepted values are:

* `block` : Task preview type cannot be changed.
* `allow` : Task preview type can be changed.

The collection must contain only one of these values.

### priority

Specifies if the task priority can be changed. Accepted values are:

* `block` : Task priority cannot be changed.
* `allow` : Task priority can be changed.

The collection must contain only one of these values.

### references

References property is configued with [fieldRules](plannerfieldrules.md) providing default values and overrides for specific conditions. Accepted values are:

* `block` : Task references cannot be changed.
* `add` : New references can be added.
* `remove` : Existing references can be removed.
* `allow` : All task reference actions are allowed.

The collection can specify either a single `allow` or `block` value, or any combination of other values.

This property supports the following override conditions. If the an override doesn't have rules specified, the values specified for the **defaultRules** property will apply instead.

* `userCreated` : Rules apply if the task reference was created by a user.
* `applicationCreated` : Rules apply if the task reference was created using application permissions.

### startDate

Specifies if the task start date can be changed. Accepted values are:

* `block` : Task start date cannot be changed.
* `allow` : Task start date can be changed.

The collection must contain only one of these values.

### title

Specifies if the task title can be changed. Accepted values are:

* `block` : Task title cannot be changed.
* `allow` : Task title can be changed.

The collection must contain only one of these values.
