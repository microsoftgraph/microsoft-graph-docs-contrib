---
title: "deletedChat resource type"
description: "Represents a deleted chat in Microsoft Teams."
author: sthapliyal
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# deletedChat resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [chat](../resources/chat.md) that was deleted in Microsoft Teams.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/deletedchat-get.md)|[deletedChat](../resources/deletedchat.md)|Read the properties and relationships of a [deletedChat](../resources/deletedchat.md) object.|
|[Undo delete](../api/deletedchat-undodelete.md)|None|Restore a deleted chat as a [chat](../resources/chat.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of a deleted chat. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deletedChat",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deletedChat",
  "id": "String (identifier)"
}
```

