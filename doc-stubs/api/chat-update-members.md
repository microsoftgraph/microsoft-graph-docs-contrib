---
title: "Update members"
description: "Update the properties of a members object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update members
Namespace: microsoft.graph

Update the properties of a members object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /chats/{chatsId}/members
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [conversationMember](../resources/conversationmember.md) object.

The following table shows the properties that are required when you create the [conversationMember](../resources/conversationmember.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|roles|String collection|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [conversationMember](../resources/conversationmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_members"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/chats/{chatsId}/members
Content-Type: application/json
Content-length: 122

{
  "@odata.type": "#microsoft.graph.conversationMember",
  "roles": [
    "String"
  ],
  "displayName": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.conversationMember",
  "id": "5286b8c7-b8c7-5286-c7b8-8652c7b88652",
  "roles": [
    "String"
  ],
  "displayName": "String"
}
```

