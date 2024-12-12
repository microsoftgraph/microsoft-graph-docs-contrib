---
title: "exportItemResponse resource type"
description: "The result of an export operation performed by the exportItems function."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exportItemResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The result of an export operation performed by the [exportItems](./mailboxitem-export.md) function.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeKey|String|The version of the item.|
|data|Stream|Data representing item in a base64 encoded [FTS format](https://docs.microsoft.com/en-us/openspecs/exchange_server_protocols/ms-oxcfxics/ed7d3455-9bdf-40eb-90bd-8dfe6164a250#gt_12daff0e-4241-4498-a93f-212795ab2450).|
|itemId|String|The item's unique identifier.|

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
  "changeKey": "String"
}
```
