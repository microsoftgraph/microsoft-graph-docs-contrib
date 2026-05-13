---
title: "Get oneDriveForBusinessBrowseSession"
description: "Read the properties and relationships of oneDriveForBusinessBrowseSession object."
author: "rahulprasad-ms"
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Get oneDriveForBusinessBrowseSession

Namespace: microsoft.graph

Read the properties and relationships of [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessbrowsesession_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessbrowsesession-get-permissions.md)]

[!INCLUDE [rbac-backuprestore-browse-granular-apis](../includes/rbac-for-apis/rbac-backuprestore-browse-granular-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/oneDriveForBusinessBrowseSessions/{oneDriveForBusinessBrowseSessionId}
```

## Optional query parameters

This method doesn't support query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_onedriveforbusinessbrowsesession"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessBrowseSessions/{oneDriveForBusinessBrowseSessionId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-onedriveforbusinessbrowsesession-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-onedriveforbusinessbrowsesession-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onedriveforbusinessbrowsesession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onedriveforbusinessbrowsesession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-onedriveforbusinessbrowsesession-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-onedriveforbusinessbrowsesession-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-onedriveforbusinessbrowsesession-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oneDriveForBusinessBrowseSession"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/backupRestore/oneDriveForBusinessBrowseSessions/$entity",
    "id": "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
    "restorePointDateTime": "2026-01-18T03:00:15Z",
    "status": "created",
    "createdDateTime": "2026-01-20T10:42:27Z",
    "expirationDateTime": "2026-01-23T10:42:24Z",
    "backupSizeInBytes": "584316",
    "directoryObjectId": "f3846f8d-80a6-4480-ae20-5966ebdf2009"
}
```

