---
title: "Create externalCertificateAuthorityCertificate"
description: "Create a new externalCertificateAuthorityCertificate object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Create externalCertificateAuthorityCertificate

Namespace: microsoft.graph.networkaccess

Create a new externalCertificateAuthorityCertificate object, which would provide a GSA admin the Certificate Signing Request (CSR) that can be downloaded to sign and generate a certificate.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "networkaccess-tlstermination-post-externalcertificateauthoritycertificates-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlstermination-post-externalcertificateauthoritycertificates-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/tls/externalCertificateAuthorityCertificates
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) object.

|Property|Type|Description|
|:---|:---|:---|
|name|String|The display name of the certificate authority. Required.|
|commonName|String|The common name (CN) field of the certificate. Required.|
|organizationName|String|The organization name (O) field of the certificate. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_externalcertificateauthoritycertificate_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/tls/externalCertificateAuthorityCertificates
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate",
  "name": "Contoso Enterprise CA",
  "commonName": "Contoso Enterprise Root CA",
  "organizationName": "Contoso Ltd"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.externalCertificateAuthorityCertificate"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate",
  "id": "365da4f6-6194-401d-b787-b09815be36e3",
  "name": "Contoso Enterprise CA",
  "commonName": "Contoso Enterprise Root CA",
  "organizationName": "Contoso Ltd",
  "validity": {
    "@odata.type": "microsoft.graph.networkaccess.validityDate",
    "startDateTime": "2025-02-10T00:00:00Z",
    "endDateTime": "2026-02-10T00:00:00Z"
  },
  "status": "csrGenerated"
}
