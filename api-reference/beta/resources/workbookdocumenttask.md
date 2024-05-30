---
title: "workbookDocumentTask resource type"
description: "Represents a document task in a workbook."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
---

# workbookDocumentTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a document task in a workbook. A **workbookDocumentTask** is associated with a comment.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [List workbookDocumentTasks](../api/workbookdocumenttask-get.md) | [workbookDocumentTask](workbookdocumenttask.md) collection | Get a list of [workbookDocumentTask](../resources/workbookdocumenttask.md) objects. |
| [Get workbookDocumentTask](../api/workbookdocumenttask-get.md) | [workbookDocumentTask](workbookdocumenttask.md) | Get the properties and relationships of a [workbookDocumentTask](../resources/workbookdocumenttask.md) object. |
| [List workbookDocumentTaskChanges](../api/workbookdocumenttask-list-changes.md) | [workbookDocumentTaskChange](workbookdocumenttaskchange.md) collection | Get a list of [workbookDocumentTaskChange](workbookdocumenttaskchange.md) objects. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignees|[workbookEmailIdentity](workbookemailidentity.md) collection| A collection of user identities the task is assigned to.|
|completedBy|[workbookEmailIdentity](workbookemailidentity.md)|The identity of the user who completed the task. Nullable.|
|completedDateTime|DateTimeOffset|Date and time when the task was completed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|createdBy|[workbookEmailIdentity](workbookemailidentity.md)|A user identity that creates the task. Nullable.|
|createdDateTime|DateTimeOffset|Date and time when the task was created. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for the task. Inherited from [entity](../resources/entity.md).|
|percentComplete|Int32 | An integer value from `0` to `100` that represents the percentage of the completion of the task. `100` means that the task is completed. Nullable.|
|priority|Int32| An integer value from `0` to `10` that represents the priority of the task. A lower value indicates a higher priority. Nullable.|
|startAndDueDateTime|[workbookDocumentTaskSchedule](workbookdocumenttaskschedule.md)|Start and due date of the task. Nullable.|
|title|String| The title of the task.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|changes|[workbookDocumentTaskChange](workbookdocumenttaskchange.md) collection|A collection of task change histories.|
|comment|[workbookComment](workbookcomment.md)|The comment that the task is associated with.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workbookDocumentTask",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookDocumentTask",
  "assignees": [{"@odata.type": "microsoft.graph.workbookEmailIdentity"}],
  "completedBy": {"@odata.type": "microsoft.graph.workbookEmailIdentity"},
  "completedDateTime": "String (timestamp)",
  "createdBy": {"@odata.type": "microsoft.graph.workbookEmailIdentity"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "percentComplete": "Int32",
  "priority": "Int32",
  "startAndDueDateTime": {"@odata.type": "microsoft.graph.workbookDocumentTaskSchedule"},
  "title": "String"
}
```
