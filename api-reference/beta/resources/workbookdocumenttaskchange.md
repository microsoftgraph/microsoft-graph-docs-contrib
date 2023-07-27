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
|assignee|[workbookEmailIdentity](workbookemailidentity.md)|Only present when the `type` property is `assign`. Nullable.|
|changedBy|[workbookEmailIdentity](workbookemailidentity.md)|The user who performs the change|
|commentId|String|The identifier of the associated comment|
|createdDateTime|DateTimeOffset|A timestamp of the change. Nullable.|
|dueDateTime|DateTimeOffset|Only present when the `type` property is `setSchedule`. Nullable. |
|id|String|The identifier of the change history|
|percentComplete|Int32|Only present when the `type` property is `setPercentComplete`. Nullable.|
|priority|Int32|Only present when the `type` property is `setPriority`. Nullable.|
|startDateTime|DateTimeOffset|Only present when the `type` property is `setSchedule`. Nullable.|
|title|String|Only present when the `type` property is `setTitle`. Nullable.|
|type|String|Type of the change history. Possible values include create, assign, unassign, etc.|
|undoChangeId|String|Only exists on undo change history. Nullable.|

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

