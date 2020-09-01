---
title: "Create userFlowAttribute"
description: "Create a new userFlowAttributes object."
localization_priority: Normal
doc_type: apiPageType
author: "jodougla"
ms.prod: "microsoft-identity-platform"
---

# Create userFlowAttribute

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [userFlowAttribute](../resources/userflowattributes.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityUserFlow.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow Attribute administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identity/userFlowAttributes
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of [userFlowAttribute](../resources/userflowattributes.md). All the properties listed in the following table are required.

|Property|Type|Description|
|:---------------|:--------|:----------|
|displayName|String|The display name of the user flow attribute.|
|description|String|The description of the user flow attribute. It is shown to the user at the time of sign up.|
|dataType|String|The data type of the user flow attribute. This cannot be modified once the custom user flow attribute is created. The following data types can be used: <ul><li/> `string` : denotes that the dataType for the userFlowAttribute is a string. <li/> `boolean` : denotes that the dataType for the userFlowAttribute is a boolean. <li/> `int64` : denotes that the dataType for the userFlowAttribute is an integer. <li/> `stringCollection` : denotes that the dataType for the userFlowAttribute is a collection of strings.</ul>|

## Response

If successful, this method returns a `201 Created` response code and [userFlowAttribute](../resources/userflowattributes.md) object in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_userFlowAttribute_from_userFlowAttributes"
}
-->

``` http
POST https://graph.microsoft.com/beta/identity/userFlowAttributes
Content-type: application/json
Content-length: 154

{
  "displayName": "Hobby",
  "description": "Your hobby",
  "dataType": "String",
}
```

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userFlowAttributes"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "extension_d09380e2b4c642b9a203fb816a04a7ad_Hobby",
    "displayName": "Hobby",
    "description": "Your hobby",
    "userFlowAttributeType": "custom",
    "dataType": "String"
}
```
