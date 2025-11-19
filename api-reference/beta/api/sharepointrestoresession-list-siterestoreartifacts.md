---
title: "List siteRestoreArtifacts"
description: "List all the siteRestoreArtifact objects for a SharePoint restore session for the tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 08/26/2024
---

# List siteRestoreArtifacts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all the [siteRestoreArtifact](../resources/siterestoreartifact.md) objects for a [sharePointRestoreSession](../resources/sharepointrestoresession.md) for the tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointrestoresession_list_siterestoreartifacts" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-list-siterestoreartifacts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifacts
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [siteRestoreArtifact](../resources/siterestoreartifact.md) objects in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "siterestoreartifact_list"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952e/siteRestoreArtifacts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/siterestoreartifact-list-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/siterestoreartifact-list-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/siterestoreartifact-list-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/siterestoreartifact-list-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/siterestoreartifact-list-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/siterestoreartifact-list-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/siterestoreartifact-list-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.siteRestoreArtifact)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.id": "/solutions/backupRestore/sharepointRestoreSessions(845457dc-4bb2-4815-bef3-8628ebd1952e)",
  "@odata.nextLink": "/solutions/backupRestore/sharepointRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952e/siteRestoreArtifacts?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18a",
      "destinationType": "inPlace",
      "status": "succeeded",
      "startDateTime": "2023-12-04T12:18:55.2117521Z",
      "completionDateTime": "2023-12-04T13:22:12.7209691Z",
      "restoredSiteId": "42f0e20e-748a-4444-80bb-d641d1865574",
      "restoredSiteName": "testsite101",
      "restoredSiteWebUrl": "https://a830edad9050849odb10gb.sharepoint.com/sites/testsite101R3",
      "restorePoint": {
        "id": "c7e702b7-b5ee-4faf-9e43-5fd23b4fb0bf_1701648000_14_1",
        "protectionDateTime": "2023-12-04T00:00:00Z",
        "expirationDateTime": "2023-12-18T00:00:00Z"
      }
    },
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18b",
      "destinationType": "new",
      "status": "succeeded",
      "startDateTime": "2024-02-10T12:18:55.2117521Z",
      "completionDateTime": "2024-02-10T13:22:12.7209691Z",
      "restoredSiteId": "da60e844-ba1d-49bc-b4d4-d5e36bae9019",
      "restoredSiteName": "testsite102",
      "restoredSiteWebUrl": "https://a830edad9050849odb10gb.sharepoint.com/sites/testsite102R0",
      "restorePoint": {
        "id": "28684b23-7f38-44bc-91c0-a3c92758030d_1601648000_14_1",
        "protectionDateTime": "2024-02-10T00:00:00Z",
        "expirationDateTime": "2024-02-24T00:00:00Z"
      }
    }
  ]
}
```
