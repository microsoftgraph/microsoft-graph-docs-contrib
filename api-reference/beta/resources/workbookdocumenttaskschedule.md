---
title: "workbookDocumentTaskSchedule resource type"
description: "Represents the start and due time of a workbookDocumentTask."
author: "VictorZheng-qizheng"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
---

# workbookDocumentTaskSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the start and due time of a [workbookDocumentTask](workbookdocumenttask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|dueDateTime|DateTimeOffset|The due date and time for the task. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|startDateTime|DateTimeOffset|The start date and time for the task. Nullable. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

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
