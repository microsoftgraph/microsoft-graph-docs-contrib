---
title: "workbookDocumentTaskSchedule resource type"
description: "Represents the start and due time of a document task"
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.prod: "excel"
doc_type: resourcePageType
---

# workbookDocumentTaskSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the start and due time of a [workbookDocumentTask](workbookdocumenttask.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dueDateTime|DateTimeOffset|A timestamp the task is set to due|
|startDateTime|DateTimeOffset|A timestamp the task is set to start|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workbookDocumentTaskSchedule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workbookDocumentTaskSchedule",
  "dueDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)"
}
```

