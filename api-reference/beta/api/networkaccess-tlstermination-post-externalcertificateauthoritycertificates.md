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

Create a new [externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) object. This request generates the Certificate Signing Request (CSR) that you download to sign and generate a certificate that you upload to the service using the [Update externalCertificateAuthorityCertificate operation](../api/networkaccess-externalcertificateauthoritycertificate-update.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_tlstermination_post_externalcertificateauthoritycertificates" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-tlstermination-post-externalcertificateauthoritycertificates-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

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

You can specify the following properties when creating a **externalCertificateAuthorityCertificate**.

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
# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-externalcertificateauthoritycertificate-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-externalcertificateauthoritycertificate-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-externalcertificateauthoritycertificate-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-externalcertificateauthoritycertificate-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-externalcertificateauthoritycertificate-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-externalcertificateauthoritycertificate-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-externalcertificateauthoritycertificate-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
```
