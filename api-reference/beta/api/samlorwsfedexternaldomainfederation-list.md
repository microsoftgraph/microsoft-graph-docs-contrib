---
title: "List samlOrWsFedExternalDomainFederations"
description: "Get a list of the samlOrWsFedExternalDomainFederation objects and their properties."
author: "namkedia"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List samlOrWsFedExternalDomainFederations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|Domain.Read.All, Domain.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|Domain.Read.All, Domain.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global Administrator
* External Identity Provider Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_samlorwsfedexternaldomainfederation"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/federationConfigurations/graph.samlOrWsFedExternalDomainFederation
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.samlOrWsFedExternalDomainFederation)"
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
    },
    {
        "id": "fa421032-5d40-5555-a428-a304b4bc18b6",
        "displayName": "Fabrikam",
        "issuerUri": "https://fabrikam.com/o/saml2?idpid=C018555d",
        "metadataExchangeUri": null,
        "signingCertificate": "MIIDdDCCAlygAwIBAgIGAXowJih/",
        "passiveSignInUri": "https://fabrikam.com/o/saml2/saml2?idpid=C018555d",
        "preferredAuthenticationProtocol": "wsFed",
        "domains": [
            {
                "id": "fabrikam.com",

            }
        ]
    }
  ]
}
```
