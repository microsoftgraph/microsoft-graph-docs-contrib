---
title: "serviceUpdateMessageViewpoint resource type"
description: Represents user view points data for a service update message."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: resourcePageType
---

# serviceUpdateMessageViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type represents user view points data for a service update message. For example, indicating whether a message is marked as read/archived/favorited for the user.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isArchived|Boolean|The value indicating whether the message is read already by the user|
|isFavorited|Boolean|The value indicating whether the message is archived by the user|
|isRead|Boolean|The value indicating whether the message is favorited by the user|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceUpdateMessageViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceUpdateMessageViewpoint",
  "isRead": "Boolean",
  "isArchived": "Boolean",
  "isFavorited": "Boolean"
}
```