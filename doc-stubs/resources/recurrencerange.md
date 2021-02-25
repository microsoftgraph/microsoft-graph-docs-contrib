---
title: "recurrenceRange resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# recurrenceRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endDate|Date|**TODO: Add Description**|
|numberOfOccurrences|Int32|**TODO: Add Description**|
|recurrenceTimeZone|String|**TODO: Add Description**|
|startDate|Date|**TODO: Add Description**|
|type|recurrenceRangeType|**TODO: Add Description**. Possible values are: `endDate`, `noEnd`, `numbered`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.recurrenceRange"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recurrenceRange",
  "type": "String",
  "numberOfOccurrences": "Integer",
  "recurrenceTimeZone": "String",
  "startDate": "Date",
  "endDate": "Date"
}
```

