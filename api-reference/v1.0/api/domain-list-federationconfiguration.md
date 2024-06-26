---
title: "List internalDomainFederations"
description: "Read the properties of the internalDomainFederation object for the domain."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List internalDomainFederations
Namespace: microsoft.graph

Read the properties of the [internalDomainFederation](../resources/internaldomainfederation.md) objects for the domain. This API returns only one object in the collection.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "domain_list_federationconfiguration" } -->
[!INCLUDE [permissions-table](../includes/permissions/domain-list-federationconfiguration-permissions.md)]

[!INCLUDE [rbac-domainfederation-apis-read](../includes/rbac-for-apis/rbac-domainfederation-apis-read.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of one [internalDomainFederation](../resources/internaldomainfederation.md) object in the response body. If there isn't an [internalDomainFederation](../resources/internaldomainfederation.md) object in the tenant, this API returns a `404 Not Found` response code.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_internaldomainfederation",
}
-->
``` http
GET https://graph.microsoft.com/v1.0/domains/{domainsId}/federationConfiguration
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-internaldomainfederation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-internaldomainfederation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-internaldomainfederation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-internaldomainfederation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-internaldomainfederation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-internaldomainfederation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-internaldomainfederation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-internaldomainfederation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
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
