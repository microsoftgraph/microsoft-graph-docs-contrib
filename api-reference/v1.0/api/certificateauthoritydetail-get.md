---
title: "Get certificateAuthorityDetail"
description: "Read the properties and relationships of a certificateAuthorityDetail object."
author: "vimranga"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 06/23/2025
---

# Get certificateAuthorityDetail

Namespace: microsoft.graph

Read the properties and relationships of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "certificateauthoritydetail_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritydetail-get-permissions.md)]

[!INCLUDE [rbac-cert-based-authpkis-apis](../includes/rbac-for-apis/rbac-cert-based-authpkis-apis.md)]

## HTTP request
``` http
GET /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object in the response body.

## Examples

### Request
The following example shows a request.
``` http
GET https://graph.microsoft.com/v1.0/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}
```

### Response
The following example shows the response.

``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.graph.certificateAuthorityDetail",
    "id": "90777c92-2eb3-4a68-931d-4a3e1e1c741f",
    "deletedDateTime": null,
    "certificateAuthorityType": "root",
    "certificate": "Binary",
    "displayName": "Contoso2 CA1",
    "issuer": "Contoso2",
    "issuerSubjectKeyIdentifier": "C0E9....711A",
    "createdDateTime": "2025-06-25T18:05:28Z",
    "expirationDateTime": "2027-08-29T02:05:57Z",
    "thumbprint": "C6FA....4E9CF2",
    "certificateRevocationListUrl": null,
    "deltacertificateRevocationListUrl": null,
    "isIssuerHintEnabled": true
  }
}
```
