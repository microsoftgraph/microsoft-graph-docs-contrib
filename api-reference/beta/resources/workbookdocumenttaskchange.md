---
title: "workbookDocumentTaskChange resource type"
description: "Represents a task change history of a workbookDocumentTask."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
---

# workbookDocumentTaskChange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a task change history of a [workbookDocumentTask](workbookdocumenttask.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get workbookDocumentTaskChange](../api/workbookdocumenttaskchange-get.md) | [workbookDocumentTaskChange](workbookdocumenttaskchange.md) | Get the properties and relationships of a [workbookDocumentTaskChange](../resources/workbookdocumenttaskchange.md) object. |
| [List workbookDocumentTaskChanges](../api/workbookdocumenttask-list-changes.md) | [workbookDocumentTaskChange](workbookdocumenttaskchange.md) collection | Get a list of [workbookDocumentTaskChange](workbookdocumenttaskchange.md) objects. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignee|[workbookEmailIdentity](workbookemailidentity.md)|The user identity the task is assigned to. Only present when the **type** property is `assign`. Nullable.|
|changedBy|[workbookEmailIdentity](workbookemailidentity.md)|The identity of the user who performs the change.|
|commentId|String|The identifier of the associated comment.|
|createdDateTime|DateTimeOffset|Date and time when the task was changed. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|dueDateTime|DateTimeOffset|The due date and time for the task. Only present when the **type** property is `setSchedule`. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier of the change history. Inherited from [entity](../resources/entity.md).|
|percentComplete|Int32|An integer value from `0` to `100` that represents the percentage of the completion of the task and associated comment. `100` means that the task and associated comment are completed. If you change the completion from `100` to a lower value, the associated task and comment are reactivated. Only present when the **type** property is `setPercentComplete`. Nullable.|
|priority|Int32|An integer value from `0` to `10` that represents the priority of the task. A lower value indicates a higher priority. `5` indicates the default priority if not set. Only present when the **type** property is `setPriority`. Nullable.|
|startDateTime|DateTimeOffset|The start date and time for the task. Only present when the **type** property is `setSchedule`. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|title|String|The title of the task. Only present when the **type** property is `setTitle`. Nullable.|
|type|String|The type of the change history. Possible values are: `create`, `assign`, `unassign`, `unassignAll`, `setPriority`, `setTitle`, `setPercentComplete`, `setSchedule`, `remove`, `restore`, `undo`. |
|undoChangeId|String| The ID of the **workbookDocumentTaskChange** that was undone for the `undo` change action. Only exists on an undo change history. Nullable.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workbookDocumentTaskChange",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookDocumentTaskChange",
  "assignee": {"@odata.type": "microsoft.graph.workbookEmailIdentity"},
  "changedBy": {"@odata.type": "microsoft.graph.workbookEmailIdentity"},
  "commentId": "String",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "percentComplete": "Int32",
  "priority": "Int32",
  "startDateTime": "String (timestamp)",
  "title": "String",
  "type": "String",
  "undoChangeId": "String"
}
```
