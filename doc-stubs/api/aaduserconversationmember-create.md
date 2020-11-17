---
title: "Create aadUserConversationMember"
description: "Create a new aadUserConversationMember object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create aadUserConversationMember
Namespace: microsoft.graph

Create a new [aadUserConversationMember](../resources/aaduserconversationmember.md) object.

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
POST ** Collection URI for Microsoft.Teams.GraphSvc.aadUserConversationMember not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [aadUserConversationMember](../resources/aaduserconversationmember.md) object.

The following table shows the properties that are required when you create the [aadUserConversationMember](../resources/aaduserconversationmember.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [conversationMember](../resources/conversationmember.md)|
|roles|String collection|**TODO: Add Description** Inherited from [conversationMember](../resources/conversationmember.md)|
|displayName|String|**TODO: Add Description** Inherited from [conversationMember](../resources/conversationmember.md)|
|userId|String|**TODO: Add Description**|
|email|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [aadUserConversationMember](../resources/aaduserconversationmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_aaduserconversationmember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for Microsoft.Teams.GraphSvc.aadUserConversationMember not found
Content-Type: application/json
Content-length: 183

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.aadUserConversationMember",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "userId": "String",
  "email": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.aadUserConversationMember"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.aadUserConversationMember",
  "id": "d39b275e-275e-d39b-5e27-9bd35e279bd3",
  "roles": [
    "String"
  ],
  "displayName": "String",
  "userId": "String",
  "email": "String"
}
```

