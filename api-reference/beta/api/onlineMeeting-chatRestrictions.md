---
title: "chatRestrictions resource type"
description: "The meeting chat restriction configuration."
author: "yuyaolian-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# chatRestrictions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the The meeting chat restriction configuration.

## Properties

| Property            | Type      | Description                                   |
|:--------------------|:----------|:----------------------------------------------|
| allowTextOnly  | Boolean   | Indicates Only allow text in the meeting chat.Optional. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatRestrictions"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.chatRestrictions",
  "allowTextOnly": "Boolean",
}
```
