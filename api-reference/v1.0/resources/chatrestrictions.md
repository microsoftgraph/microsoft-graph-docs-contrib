---
title: "chatRestrictions resource type"
description: "Specifies the configuration settings for meeting chat restrictions."
author: "yuyaolian-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# chatRestrictions resource type

Namespace: microsoft.graph

Specifies the configuration settings for meeting chat restrictions.

## Properties

| Property            | Type      | Description                                   |
|:--------------------|:----------|:----------------------------------------------|
| allowTextOnly  | Boolean   | Indicates whether only text is allowed in the meeting chat. Optional. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
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
