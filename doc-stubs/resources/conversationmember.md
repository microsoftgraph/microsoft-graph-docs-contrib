---
title: "conversationMember resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# conversationMember resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List members](../api/chat-list-members.md)|[conversationMember](../resources/conversationmember.md) collection|Get the conversationMember resources from the members navigation property.|
|[Create members](../api/chat-post-members.md)|[conversationMember](../resources/conversationmember.md)|Create a new conversationMember object.|
|[Update members](../api/chat-update-members.md)|[conversationMember](../resources/conversationmember.md)|Update the properties of a members object.|
|[Get members](../api/chat-get-conversationmember.md)|[conversationMember](../resources/conversationmember.md)|Read the properties and relationships of a [conversationMember](../resources/conversationmember.md) object.|
|[Delete members](../api/chat-delete-members.md)|None|Delete a [conversationMember](../resources/conversationmember.md) object.|
|[List conversationMembers](../api/conversationmember-list.md)|[conversationMember](../resources/conversationmember.md) collection|Get a list of the [conversationMember](../resources/conversationmember.md) objects and their properties.|
|[Create conversationMember](../api/conversationmember-create.md)|[conversationMember](../resources/conversationmember.md)|Create a new [conversationMember](../resources/conversationmember.md) object.|
|[Get conversationMember](../api/conversationmember-get.md)|[conversationMember](../resources/conversationmember.md)|Read the properties and relationships of a [conversationMember](../resources/conversationmember.md) object.|
|[Update conversationMember](../api/conversationmember-update.md)|[conversationMember](../resources/conversationmember.md)|Update the properties of a [conversationMember](../resources/conversationmember.md) object.|
|[Delete conversationMember](../api/conversationmember-delete.md)|None|Deletes a [conversationMember](../resources/conversationmember.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|roles|String collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conversationMember",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conversationMember",
  "id": "String (identifier)",
  "roles": [
    "String"
  ],
  "displayName": "String"
}
```

