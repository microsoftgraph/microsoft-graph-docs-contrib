---
title: "List identityProviders"
description: "Get a list of the identityProvider objects and their properties."
localization_priority: Normal
doc_type: apiPageType
author: "namkedia"
ms.prod: "microsoft-identity-platform"
---

# List identityProviders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [identityProviders](../resources/identityprovider.md) and [openIdConnectProvider](../resources/openidconnectprovider.md) objects and their properties.

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
GET /identityProviders
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

If successful, this method returns a `200 OK` response code and a collection of [identityProvider](../resources/identityprovider.md) and [openIdConnectProvider](../resources/openIdConnectProvider.md) objects in the response body.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "get_identityprovider"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityProviders
```

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": ["microsoft.graph.IdentityProvider","microsoft.graph.openIdConnectProvider"],
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
        "@odata.type": "microsoft.graph.identityProvider"
        "id": "Amazon-OAUTH",
        "name": "Login with Amazon",
        "type": "Amazon",
        "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
        "clientSecret": "*****"
    },
    {
        "@odata.type": "microsoft.graph.openIdConnectProvider"
        "id": "OIDC-V1-MyTest-085a8a0c-58cb-4b6d-8e07-1328ea404e1a",
        "name": "Login with the Contoso identity provider",
        "type": "OpenIDConnect",
        "clientId": "56433757-cadd-4135-8431-2c9e3fd68ae8",
        "clientSecret": "*****",
        "claimsMapping": {
            "userId": "myUserId",
            "givenName": "myGivenName",
            "surname": "mySurname",
            "email": "myEmail",
            "displayName": "myDisplayName"
        },
        "domainHint": "contoso"
        "metadataUrl": "https://mycustomoidc.com/.well-known/openid-configuration",
        "responseMode": "form_post",
        "responseType": "code",
        "scope": "openid"
    }
}
```
