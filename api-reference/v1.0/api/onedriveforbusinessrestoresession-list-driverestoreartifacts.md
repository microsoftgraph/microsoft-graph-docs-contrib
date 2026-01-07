---
title: "List driveRestoreArtifacts"
description: "Get a list of the driveRestoreArtifacts and their properties for a oneDriveForBusinessRestoreSession for a tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# List driveRestoreArtifacts

Namespace: microsoft.graph

Get a list of the [driveRestoreArtifact](../resources/driverestoreartifact.md) objects and their properties for a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) for a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessrestoresession_list_driverestoreartifacts" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessrestoresession-list-driverestoreartifacts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifacts
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [driveRestoreArtifact](../resources/driverestoreartifact.md) objects in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_driverestoreartifact"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952e/driveRestoreArtifacts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-driverestoreartifact-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-driverestoreartifact-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-driverestoreartifact-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-driverestoreartifact-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-driverestoreartifact-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-driverestoreartifact-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-driverestoreartifact-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.driveRestoreArtifact)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.nextLink": "/solutions/backupRestore/oneDriveForBusinessRestoreSessions/845457dc-4bb2-4815-bef3-8628ebd1952e/driveRestoreArtifacts?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18e",
      "destinationType": "inPlace",
      "status": "succeeded",
      "startDateTime": "2023-12-04T12:18:55.2117521Z",
      "completionDateTime": "2023-12-04T13:22:12.7209691Z",
      "restoredSiteId": "cad7ca1b-be3c-4d50-8416-152a58b969d7",
      "restoredSiteName": "testodbsite101",
      "restoredSiteWebUrl": "https://a830edad9050849odb10gb.sharepoint.com/sites/testodbsite101R0",
      "restorePoint": {
          "id": "e9592a41-9d38-4e94-a16b-4d9fef695c0b_1791648201_11_7",
          "protectionDateTime": "2023-12-04T00:00:00Z",
          "expirationDateTime": "2023-12-18T00:00:00Z"
      }
    },
    {
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18f",
      "destinationType": "new",
      "status": "succeeded",
      "startDateTime": "2024-02-10T12:18:55.2117521Z",
      "completionDateTime": "2024-02-10T13:22:12.7209691Z",
      "restoredSiteId": "6cba176d-ef57-4933-b33c-990c8e524894",
      "restoredSiteName": "testodbsite102",
      "restoredSiteWebUrl": "https://a830edad9050849odb10gb.sharepoint.com/sites/testodbsite102R0",
      "restorePoint": {
          "id": "3ee54204-6ed5-4130-aea5-b43117a878af_1791648201_11_7",
          "protectionDateTime": "2024-02-10T00:00:00Z",
          "expirationDateTime": "2024-02-24T00:00:00Z"
      }
    }
  ]
}
```

