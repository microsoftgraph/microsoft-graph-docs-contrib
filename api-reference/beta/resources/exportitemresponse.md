---
title: "exportItemResponse resource type"
description: "Represents the result of an export operation performed by the exportItems function."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# exportItemResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of an export operation performed by the [exportItems](../api/mailbox-exportitems.md) function.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeKey|String|The version of the item.|
|data|Stream|Data that represents an item in a base64 encoded opaque stream.|
|error|[mailTipsError](mailtipserror.md)|An error that occurs during an action.|
|itemId|String|The unique identifier of the item.|

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
  "changeKey": "String",
  "data": "String",
  "error": {"@odata.type": "microsoft.graph.mailTipsError"},
  "itemId": "String"
}
```
