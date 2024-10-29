---
title: "Get certificateAuthorityDetail"
description: "Read the properties and relationships of a certificateAuthorityDetail object."
author: "suawat"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get certificateAuthorityDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [certificateAuthorityDetail](../resources/certificateauthoritydetail.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "certificateauthoritydetail-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/certificateauthoritydetail-get-permissions.md)]

## HTTP request


``` http
GET /directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
GET https://graph.microsoft.com/beta/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.

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
    "issuerSubjectKeyIdentifier": "C0E96C3F3AD77C2265409F9E9048711A",
    "createdDateTime": "2024-10-25T18:05:28Z",
    "expirationDateTime": "2027-08-29T02:05:57Z",
    "thumbprint": "C6FA3D4CDF28E118B9BC2790734E9CF2",
    "certificateRevocationListUrl": null,
    "deltacertificateRevocationListUrl": null,
    "isIssuerHintEnabled": true
  }
}
```