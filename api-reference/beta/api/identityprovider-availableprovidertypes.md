---
title: "identityProvider: availableProviderTypes"
description: "Retrieve all available identity provider types in the directory."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "microsoft-identity-platform"
---

# identityProvider: availableProviderTypes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieves all identity provider types available in a directory.

In Azure Active Directory (Azure AD) B2B scenarios involving an Azure AD tenant, the identity provider types can be `Google` and `Facebook`.

In an Azure AD B2C tenant the identity provider types can be `Microsoft`, `Google`, `Facebook`, `Amazon`, `LinkedIn`, `Twitter`, `OpenIDConnect`, `Weibo`, `QQ`, `WeChat` and `GitHub`.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityProvider.Read.All, IdentityProvider.ReadWrite.All|

The work or school account needs to belong to one of the following two roles:
* Global administrator
* External Identity Provider administrator

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityProviders/availableProviderTypes
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Function parameters
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a String collection in the response body.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "identityprovider_availableprovidertypes"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProviders/availableProviderTypes
```

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Edm.String)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": [
      "Amazon",
      "OpenIDConnect",
      "Facebook",
      "GitHub",
      "Google",
      "LinkedIn",
      "Microsoft",
      "QQ",
      "Twitter",
      "WeChat",
      "Weibo"
  ]
}
```
