---
title: "List internalDomainFederations"
description: "Read the properties of the internalDomainFederation object for the domain."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List internalDomainFederations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of the [internalDomainFederation](../resources/internaldomainfederation.md) objects for the domain. This API returns only one object in the collection.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Domain.Read.All, Domain.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Domain.Read.All, Domain.ReadWrite.All|

The calling user must be assigned one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference):

- Security Administrator
- External Identity Provider Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /domains/{domainsId}/federationConfiguration
```

## Optional query parameters
This method does not support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of one [internalDomainFederation](../resources/internaldomainfederation.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "list_internaldomainfederation",
}
-->
``` http
GET https://graph.microsoft.com/beta/domains/{domainsId}/federationConfiguration
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.internalDomainFederation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.internalDomainFederation",
      "id": "6601d14b-d113-8f64-fda2-9b5ddda18ecc",
      "displayName": "Contoso",
      "issuerUri": "http://contoso.com/adfs/services/trust",
      "metadataExchangeUri": "https://sts.contoso.com/adfs/services/trust/mex",
      "signingCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
      "passiveSignInUri": "https://sts.contoso.com/adfs/ls",
      "preferredAuthenticationProtocol": "wsFed",
      "activeSignInUri": "https://sts.contoso.com/adfs/services/trust/2005/usernamemixed",
      "signOutUri": "https://sts.contoso.com/adfs/ls",
      "promptLoginBehavior": "nativeSupport",
      "isSignedAuthenticationRequestRequired": true,
      "nextSigningCertificate": "MIIE3jCCAsagAwIBAgIQQcyDaZz3MI",
      "federatedIdpMfaBehavior": "rejectMfaByFederatedIdp",
      "signingCertificateUpdateStatus": {
          "certificateUpdateResult": "Success",
          "lastRunDateTime": "2021-08-25T07:44:46.2616778Z"
      }
    }
  ]
}
```
