---
title: "Delete externalCertificateAuthorityCertificate"
description: "Delete an externalCertificateAuthorityCertificate object."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Delete externalCertificateAuthorityCertificate

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [externalCertificateAuthorityCertificate](../resources/networkaccess-externalcertificateauthoritycertificate.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_externalcertificateauthoritycertificate_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-externalcertificateauthoritycertificate-delete-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /networkAccess/tls/externalCertificateAuthorityCertificates/{externalCertificateAuthorityCertificateId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_externalcertificateauthoritycertificate",
  "sampleKeys": ["365da4f6-6194-401d-b787-b09815be36e3"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/networkAccess/tls/externalCertificateAuthorityCertificates/365da4f6-6194-401d-b787-b09815be36e3
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
