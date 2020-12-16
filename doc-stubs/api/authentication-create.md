---
title: "Create authentication"
description: "Create a new authentication object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create authentication
Namespace: microsoft.graph

Create a new [authentication](../resources/authentication.md) object.

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
POST ** Collection URI for microsoft.strongAuthentication.authentication not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authentication](../resources/authentication.md) object.

The following table shows the properties that are required when you create the [authentication](../resources/authentication.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|strongAuthenticationStatus|strongAuthenticationStatus|**TODO: Add Description**. Possible values are: `none`, `perUserMfaEnabled`, `perUserMfaEnforced`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and an [authentication](../resources/authentication.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_authentication_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.strongAuthentication.authentication not found
Content-Type: application/json
Content-length: 114

{
  "@odata.type": "#microsoft.strongAuthentication.authentication",
  "strongAuthenticationStatus": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.strongAuthentication.authentication"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.strongAuthentication.authentication",
  "id": "b9333365-3365-b933-6533-33b9653333b9",
  "strongAuthenticationStatus": "String"
}
```

