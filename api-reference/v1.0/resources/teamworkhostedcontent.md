---
title: "teamworkHostedContent resource type"
description: "Represents rich content hosted by Microsoft Teams."
author: "RamjotSingh"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkHostedContent resource type

Namespace: microsoft.graph

Represents rich content like images and code snippets in Microsoft Teams. For rich content in [channel and chat messages](chatMessage.md), see [chatMessageHostedContent](chatMessageHostedContent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentBytes|Binary|Write only. Bytes for the hosted content (such as images).|
|contentType|String|Write only. Content type. such as image/png, image/jpg.|
|id|String|ID of the hosted content.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamworkHostedContent",
  "openType": false
}
-->
``` json
{
  "id": "String (identifier)",
  "contentBytes": "Binary",
  "contentType": "String"
}
```
