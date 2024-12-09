---
title: "exportItemResponse resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# exportItemResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeKey|String|**TODO: Add Description**|
|data|Stream|**TODO: Add Description**|
|error|[mailTipsError](../resources/mailtipserror.md)|**TODO: Add Description**|
|itemId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.exportItemResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exportItemResponse",
  "itemId": "String",
  "data": "Stream",
  "changeKey": "String",
  "error": {
    "@odata.type": "microsoft.graph.mailTipsError"
  }
}
```

