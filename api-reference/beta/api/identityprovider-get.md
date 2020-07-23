---
title: "Get identityProvider"
description: "Read the properties and relationships of an identityProvider object."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "microsoft-identity-platform"
---

# Get identityProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

RRead the properties and relationships of an [identityProvider](../resources/identityprovider.md) or [openIdConnectProvider](../resources/openidconnectprovider.md).

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
GET /identityProviders/{id}
```
## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [identityProvider](../resources/identityprovider.md) or [openIdConnectProvider](../resources/openIdConnectProvider.md) in the response body.

## Example

### Example 1: The following example retrieves a specific **identityProvider**

#### Request
<!-- {
  "blockType": "request",
  "name": "get_identityprovider"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProviders/{identityProvidersId}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.IdentityProvider"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "Amazon-OAUTH",
    "type": "Amazon",
    "name": "Login with Amazon",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "*****"
}
```
### Example 2: The following example retrieves a specific **openIDConnectProvider**

#### Request
<!-- {
  "blockType": "request",
  "name": "get_identityprovider"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProviders/{identityProvidersId}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.openIdConnectProvider"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.type": "microsoft.graph.openIdConnectProvider"
    "id": "OIDC-V1-MyTest-085a8a0c-58cb-4b6d-8e07-1328ea404e1a",
    "name": "Login with the Contoso identity provider",
    "type": "OpenIDConnect",
    "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
    "clientSecret": "12345",
    "claimsMapping": {
        "userId": "myUserId",
        "givenName": "myGivenName",
        "surname": "mySurname",
        "email": "myEmail",
        "displayName": "myDisplayName"
    },
    "domainHint": "mycustomoidc"
    "metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",
    "responseMode": "form_post",
    "responseType": "code",
    "scope": "openid"
}
```