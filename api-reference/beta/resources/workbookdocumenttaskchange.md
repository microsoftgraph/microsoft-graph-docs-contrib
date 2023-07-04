---
title: "workbookDocumentTaskChange resource type"
description: "Represents a task change history"
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookDocumentTaskChange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a task change history of a [workbookDocumentTask](workbookdocumenttask.md)


Inherits from [entity](../resources/entity.md).

## Methods



## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignee|[workbookEmailIdentity](workbookemailidentity.md)|Only exists on assign change history|
|changedBy|[workbookEmailIdentity](workbookemailidentity.md)|The user who performs the change|
|commentId|String|The identifier of the associated comment|
|createdDateTime|DateTimeOffset|A timestamp of the change|
|dueDateTime|DateTimeOffset|Only exists on setSchedule change history |
|id|String|The identifier of the change history|
|percentComplete|Int32|Only exists on setPercentComplete change history|
|priority|Int32|Only exists on setPriority change history|
|startDateTime|DateTimeOffset|Only exists on setSchedule change history|
|title|String|Only exists on setTitle change history|
|type|String|Type of the change history, including create, assign, unassign, unassignAll, setPriority, setTitle, setPercentComplete, setSchedule, remove, restore, undo, and unknownFutureValue |
|undoChangeId|String|Only exists on undo change history |

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
  "id": "String (identifier)",
  "assignee": {
    "@odata.type": "microsoft.graph.workbookEmailIdentity"
  },
  "changedBy": {
    "@odata.type": "microsoft.graph.workbookEmailIdentity"
  },
  "commentId": "String",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "percentComplete": "Integer",
  "priority": "Integer",
  "startDateTime": "String (timestamp)",
  "title": "String",
  "type": "String",
  "undoChangeId": "String"
}
```

