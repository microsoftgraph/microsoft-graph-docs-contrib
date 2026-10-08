---
title: "Upload attachment content"
description: "Upload binary content for a case attachment."
author: "alfeldsh"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Upload attachment content

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Upload binary content for an [attachment](../resources/security-casemanagement-attachment.md). Create the attachment metadata first by using [Create case attachment](../api/security-casemanagement-case-post-attachments.md).

The maximum file size is 100 MB. Upload files in chunks of no more than 1 MB. For files larger than 1 MB, send one PUT request for each chunk until all byte ranges are uploaded.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_casemanagement_attachment_upload_content" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-casemanagement-attachment-upload-content-permissions.md)]
[!INCLUDE [rbac-case-management-apis](../includes/rbac-for-apis/rbac-case-management-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /security/caseManagement/cases/{caseId}/attachments/{attachmentId}/content
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Range|The zero-based, inclusive byte range of the chunk and the total file size, in the format `bytes {start}-{end}/{total}`. The total must match the attachment **fileSize**. Required.|
|Content-Type|`application/octet-stream`. Required.|

## Request body

Supply a binary content chunk of no more than 1 MB.

## Response

When all chunks are uploaded successfully, this method returns a `201 Created` response code and no response body.

After upload completes, the service asynchronously scans the attachment for malware. The content isn't available to download until scanning completes successfully.

## Examples

### Request

The following example uploads an 11-byte file in one chunk.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_casemanagement_upload_attachment_content"
}
-->
``` http
PUT https://graph.microsoft.com/beta/security/caseManagement/cases/{caseId}/attachments/{attachmentId}/content
Content-Type: application/octet-stream
Content-Range: bytes 0-10/11

hello world
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-casemanagement-upload-attachment-content-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-casemanagement-upload-attachment-content-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-casemanagement-upload-attachment-content-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-casemanagement-upload-attachment-content-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-casemanagement-upload-attachment-content-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response after the upload completes.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 201 Created
```
