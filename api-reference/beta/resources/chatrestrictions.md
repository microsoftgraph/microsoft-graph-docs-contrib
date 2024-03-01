---
title: "chatRestrictions resource type"
description: "Specifies the configuration for meeting chat restrictions."
author: "yuyaolian-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# chatRestrictions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the configuration for meeting chat restrictions.

## Properties

| Property            | Type      | Description                                   |
|:--------------------|:----------|:----------------------------------------------|
| allowTextOnly  | Boolean   | Indicates whether only text is allowed in the meeting chat. Optional. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.chatrestrictions"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.chatrestrictions",
  "allowTextOnly": "Boolean",
}
```
