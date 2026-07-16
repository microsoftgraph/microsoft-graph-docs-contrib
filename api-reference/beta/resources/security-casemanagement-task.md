---
title: "task resource type (case management)"
description: "Represents a unit of work that must be completed as part of a case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# task resource type (case management)

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unit of work that must be completed as part of a [case](../resources/security-casemanagement-case.md).

This resource inherits from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-casemanagement-case-list-tasks.md)|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) collection|Get a list of tasks for a case.|
|[Create](../api/security-casemanagement-case-post-tasks.md)|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md)|Create a task for a case.|
|[Get](../api/security-casemanagement-task-get.md)|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md)|Read the properties and relationships of [microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md) object.|
|[Update](../api/security-casemanagement-task-update.md)|[microsoft.graph.security.caseManagement.task](../resources/security-casemanagement-task.md)|Update the properties of a task object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedTo|String|The user assigned to the task.|
|category|[microsoft.graph.security.caseManagement.caseTaskCategory](#casetaskcategory-values)|The functional category of the task.|
|closingNotes|String|Notes recorded when the task is completed.|
|createdBy|String|The user or service that created the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|createdDateTime|DateTimeOffset|The date and time when the resource was created. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|description|String|The description of the task.|
|displayName|String|The title of the task.|
|dueDateTime|DateTimeOffset|The target completion date and time for the task.|
|id|String|The unique identifier for the resource. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|String|The user or service that last modified the resource. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the resource was last modified. Inherited from [caseManagementEntity](../resources/security-casemanagement-casemanagemententity.md).|
|priority|[microsoft.graph.security.caseManagement.caseTaskPriority](#casetaskpriority-values)|The priority assigned to the task.|
|status|[microsoft.graph.security.caseManagement.taskStatus](#taskstatus-values)|The lifecycle state of the task.|

### caseTaskCategory values

|Member|Description|
|:---|:---|
|uncategorized|Uncategorized task.|
|triage|Task for triaging the case.|
|contain|Task for containing the threat.|
|investigate|Task for investigating the case.|
|remediate|Task for remediating the issue.|
|prevent|Task for preventing recurrence.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### caseTaskPriority values

|Member|Description|
|:---|:---|
|notSet|No priority is set.|
|veryLow|Very low priority task.|
|low|Low priority task.|
|medium|Medium priority task.|
|high|High priority task.|
|critical|Critical priority task.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### taskStatus values

|Member|Description|
|:---|:---|
|notSet|No status is set.|
|new|New task.|
|inProgress|Task is in progress.|
|failed|Task failed.|
|partiallyCompleted|Task is partially completed.|
|skipped|Task was skipped.|
|completed|Task is completed.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseManagement.task",
  "baseType": "microsoft.graph.security.caseManagement.caseManagementEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.task",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": "String",
  "displayName": "String",
  "status": "String",
  "description": "String",
  "assignedTo": "String",
  "closingNotes": "String",
  "dueDateTime": "String (timestamp)",
  "priority": "String",
  "category": "String"
}
```
