---
title: "List granularDriveRestoreArtifacts"
description: "Get a list of the granularDriveRestoreArtifact objects and their properties."
author: "rahulprasad-ms"
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List granularDriveRestoreArtifacts

Namespace: microsoft.graph

Get a list of the [granularDriveRestoreArtifact](../resources/granulardriverestoreartifact.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessrestoresession_list_granulardriverestoreartifacts" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessrestoresession-list-granulardriverestoreartifacts-permissions.md)]

[!INCLUDE [rbac-backuprestore-browse-granular-apis](../includes/rbac-for-apis/rbac-backuprestore-browse-granular-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/granularDriveRestoreArtifacts
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

If successful, this method returns a `200 OK` response code and a collection of [granularDriveRestoreArtifact](../resources/granulardriverestoreartifact.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_granulardriverestoreartifact"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessRestoreSessions/01b9d504-a6a4-464b-b2e1-0085d9fab651/granularDriveRestoreArtifacts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-granulardriverestoreartifact-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-granulardriverestoreartifact-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-granulardriverestoreartifact-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-granulardriverestoreartifact-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-granulardriverestoreartifact-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-granulardriverestoreartifact-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-granulardriverestoreartifact-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.granularDriveRestoreArtifact)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/backupRestore/oneDriveForBusinessRestoreSessions('01b9d504-a6a4-464b-b2e1-0085d9fab651')/granularDriveRestoreArtifacts",
  "value": [
    {
      "id": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,292dcd7d-b1c3-40e5-afc3-7c10503a0eac",
      "browseSessionId": "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
      "restoredItemKey": "",
      "webUrl": "",
      "restoredItemPath": "",
      "restoredItemWebUrl": "",
      "status": "added",
      "restorePointDateTime": "0001-01-01T00:00:00Z",
      "startDateTime": "0001-01-01T00:00:00Z",
      "completionDateTime": "0001-01-01T00:00:00Z",
      "directoryObjectId": "f3846f8d-80a6-4480-ae20-5966ebdf2009"
    },
    {
      "id": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,8d1ba53f-986a-409f-bf90-3bf55dbd7526",
      "browseSessionId": "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
      "restoredItemKey": "",
      "webUrl": "",
      "restoredItemPath": "",
      "restoredItemWebUrl": "",
      "status": "unknown",
      "restorePointDateTime": "0001-01-01T00:00:00Z",
      "startDateTime": "0001-01-01T00:00:00Z",
      "completionDateTime": "0001-01-01T00:00:00Z",
      "directoryObjectId": "f3846f8d-80a6-4480-ae20-5966ebdf2009"
    }
  ]
}
```

