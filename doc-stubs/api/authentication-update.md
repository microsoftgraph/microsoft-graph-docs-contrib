---
title: "Update authentication"
description: "Update the properties of an authentication object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update authentication
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authentication](../resources/authentication.md) object.

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
PATCH /me/authentication
PATCH /users/{usersId}/authentication
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authentication](../resources/authentication.md) object.

The following table shows the properties that are required when you update the [authentication](../resources/authentication.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|policy|[authenticationMethodsPolicyEvaluation](../resources/authenticationmethodspolicyevaluation.md) collection|**TODO: Add Description**|
|strongAuthenticationStatus|strongAuthenticationStatus|**TODO: Add Description**. The possible values are: `none`, `perUserMfaEnabled`, `perUserMfaEnforced`, `unknownFutureValue`.|



## Response

If successful, this method returns a `200 OK` response code and an updated [authentication](../resources/authentication.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authentication"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/authentication
Content-Type: application/json
Content-length: 212

{
  "@odata.type": "#microsoft.graph.authentication",
  "policy": [
    {
      "@odata.type": "microsoft.graph.authenticationMethodsPolicyEvaluation"
    }
  ],
  "strongAuthenticationStatus": "String"
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
  "@odata.type": "#microsoft.graph.authentication",
  "id": "eea9490e-490e-eea9-0e49-a9ee0e49a9ee",
  "policy": [
    {
      "@odata.type": "microsoft.graph.authenticationMethodsPolicyEvaluation"
    }
  ],
  "strongAuthenticationStatus": "String"
}
```

