---
title: "chatMessageInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# chatMessageInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List chatMessageInfoes](../api/chatmessageinfo-list.md)|[chatMessageInfo](../resources/chatmessageinfo.md) collection|Get a list of the [chatMessageInfo](../resources/chatmessageinfo.md) objects and their properties.|
|[Create chatMessageInfo](../api/chatmessageinfo-create.md)|[chatMessageInfo](../resources/chatmessageinfo.md)|Create a new [chatMessageInfo](../resources/chatmessageinfo.md) object.|
|[Get chatMessageInfo](../api/chatmessageinfo-get.md)|[chatMessageInfo](../resources/chatmessageinfo.md)|Read the properties and relationships of a [chatMessageInfo](../resources/chatmessageinfo.md) object.|
|[Update chatMessageInfo](../api/chatmessageinfo-update.md)|[chatMessageInfo](../resources/chatmessageinfo.md)|Update the properties of a [chatMessageInfo](../resources/chatmessageinfo.md) object.|
|[Delete chatMessageInfo](../api/chatmessageinfo-delete.md)|None|Deletes a [chatMessageInfo](../resources/chatmessageinfo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|from|[chatMessageFromIdentitySet](../resources/chatmessagefromidentityset.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isDeleted|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.chatMessageInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.chatMessageInfo",
  "id": "String (identifier)",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "from": {
    "@odata.type": "microsoft.graph.chatMessageFromIdentitySet"
  },
  "createdDateTime": "String (timestamp)",
  "isDeleted": "Boolean"
}
```

