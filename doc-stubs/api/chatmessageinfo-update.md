---
title: "Update chatMessageInfo"
description: "Update the properties of a chatMessageInfo object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update chatMessageInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [chatMessageInfo](../resources/chatmessageinfo.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /chats/{chatsId}/lastMessagePreview
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [chatMessageInfo](../resources/chatmessageinfo.md) object.

The following table shows the properties that are required when you update the [chatMessageInfo](../resources/chatmessageinfo.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description**|
|from|[chatMessageFromIdentitySet](../resources/chatmessagefromidentityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|isDeleted|Boolean|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [chatMessageInfo](../resources/chatmessageinfo.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_chatmessageinfo"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/chats/{chatsId}/lastMessagePreview
Content-Type: application/json
Content-length: 234

{
  "@odata.type": "#microsoft.graph.chatMessageInfo",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "from": {
    "@odata.type": "microsoft.graph.chatMessageFromIdentitySet"
  },
  "isDeleted": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.chatMessageInfo",
  "id": "c50b83ca-83ca-c50b-ca83-0bc5ca830bc5",
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

