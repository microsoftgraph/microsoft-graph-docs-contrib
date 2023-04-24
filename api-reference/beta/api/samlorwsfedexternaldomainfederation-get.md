---
title: "Get samlOrWsFedExternalDomainFederation"
description: "Read the properties and relationships of a samlOrWsFedExternalDomainFederation object."
author: "namkedia"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get samlOrWsFedExternalDomainFederation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object for a specific [externalDomainName](../resources/externaldomainname.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Domain.Read.All, Domain.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Domain.Read.All, Domain.ReadWrite.All|

The work or school account needs to belong to one of the following [Azure Active Directory (Azure AD) roles](/azure/active-directory/roles/permissions-reference):

* Global Administrator
* External Identity Provider Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation?$filter=domains/any(x: x/id eq 'domainName-value')
```

## Query parameters

This method requires the `$filter` OData query parameter. To retrieve a specific [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) filter based on [externalDomainName](../resources/externaldomainname.md), add `?$filter=domains/any(x: x/id eq 'domainName-value')`.

For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_samlorwsfedexternaldomainfederation_e1"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation?$filter=domains/any(x: x/id eq 'contoso.com')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-samlorwsfedexternaldomainfederation-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-samlorwsfedexternaldomainfederation-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-samlorwsfedexternaldomainfederation-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-samlorwsfedexternaldomainfederation-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-samlorwsfedexternaldomainfederation-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-samlorwsfedexternaldomainfederation-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "id": "96db02e2-80c1-5555-bc3a-de92ffb8c5be",
        "displayName": "Contoso",
        "issuerUri": "http://contoso.com/adfs/services/trust",
        "metadataExchangeUri": null,
        "signingCertificate": "MIIC6DCCAdCgAwIBAgIQQ6vYJIVKQ",
        "passiveSignInUri": "https://contoso.com/adfs/ls/",
        "preferredAuthenticationProtocol": "saml",
        "domains": [
            {
                "id": "contoso.com"
            }
        ]
    }
  ]
}

```
