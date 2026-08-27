---
title: "Download attachment content"
description: "Download binary content for a case attachment."
author: "alfeldsh"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Download attachment content

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the binary content of an [attachment](../resources/security-casemanagement-attachment.md).

After an upload completes, the service asynchronously scans the attachment for malware. Poll the attachment metadata by using [Get attachment](../api/security-casemanagement-attachment-get.md). If **scanResult** is `unscanned`, wait and try again later. Download the content only when **scanResult** is `noThreatsFound`. Don't download content when **scanResult** is `malicious`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_attachment_download_content" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-attachment-download-content-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/caseManagement/cases/{caseId}/attachments/{attachmentId}/content
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code, a `Content-Type` of `application/octet-stream`, and the attachment content in the response body.

A request made before content is uploaded or while malware scanning is pending returns `400 Bad Request`. Wait for scanning to complete and retry the request.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_download_attachment_content"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/attachments/{attachmentId}/content
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-download-attachment-content-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-download-attachment-content-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-download-attachment-content-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-download-attachment-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-casemanagement-download-attachment-content-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-casemanagement-download-attachment-content-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-download-attachment-content-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

...binary data...
```
