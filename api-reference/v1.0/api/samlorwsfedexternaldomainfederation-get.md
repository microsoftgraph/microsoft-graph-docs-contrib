---
title: "Get samlOrWsFedExternalDomainFederation"
description: "Read the properties and relationships of a samlOrWsFedExternalDomainFederation object."
author: "namkedia"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get samlOrWsFedExternalDomainFederation
Namespace: microsoft.graph

Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object for a specific [externalDomainName](../resources/externaldomainname.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "samlorwsfedexternaldomainfederation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/samlorwsfedexternaldomainfederation-get-permissions.md)]

The work or school account needs to belong to one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object in the response body.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_samlorwsfedexternaldomainfederation"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation?$filter=domains/any(x: x/id eq 'contoso.com')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-samlorwsfedexternaldomainfederation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-samlorwsfedexternaldomainfederation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-samlorwsfedexternaldomainfederation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-samlorwsfedexternaldomainfederation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-samlorwsfedexternaldomainfederation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-samlorwsfedexternaldomainfederation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-samlorwsfedexternaldomainfederation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-samlorwsfedexternaldomainfederation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
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
