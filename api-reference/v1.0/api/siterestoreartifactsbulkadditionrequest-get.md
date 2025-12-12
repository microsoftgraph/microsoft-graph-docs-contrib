---
title: "Get siteRestoreArtifactsBulkAdditionRequest"
description: "Get a siteRestoreArtifactsBulkAdditionRequest object by its ID, associated with a sharePointRestoreSession."
author: "nupur-munda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 05/20/2025
---

# Get siteRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

Get a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object by its **id**, associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "siterestoreartifactsbulkadditionrequest-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/siterestoreartifactsbulkadditionrequest-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifactsBulkAdditionRequests/{siteRestoreArtifactsBulkAdditionRequestId}
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_siterestoreartifactsbulkadditionrequest"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointRestoreSessions/89ca51b1-b0a5-4555-a8f3-ad95afcf867d/siteRestoreArtifactsBulkAdditionRequests/b246ac99-4184-48ed-b7ff-9c2a7af69757
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-siterestoreartifactsbulkadditionrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-siterestoreartifactsbulkadditionrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-siterestoreartifactsbulkadditionrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-siterestoreartifactsbulkadditionrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-siterestoreartifactsbulkadditionrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-siterestoreartifactsbulkadditionrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-siterestoreartifactsbulkadditionrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteRestoreArtifactsBulkAdditionRequest"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/backupRestore/sharePointRestoreSessions('f25015f4-6bb2-46cb-b800-a8ec86a02815')/siteRestoreArtifactsBulkAdditionRequests",
  "value": [
    {
      "id": "7ab93651-5029-4fcd-b263-5dcabad61e8d",
      "destinationType": "new",
      "tags": "fastRestore",
      "restorePointPreference": "latest",
      "displayName": "spo-BulkRestoreArtifacts",
      "status": "completedWithErrors",
      "createdDateTime": "2024-12-04T09:22:34.5159056Z",
      "lastModifiedDateTime": "2024-12-04T09:25:30.2641799Z",
      "siteWebUrls": [],
      "protectionTimePeriod": {
        "startDateTime": "2024-01-01T00:00:00Z",
        "endDateTime": "2024-01-08T00:00:00Z"
      },
      "createdBy": {
        "user": {
          "identity": "6f707fc8-0250-4fd5-89b5-c0312bea7460"
        }
      },
      "lastModifiedBy": {
        "user": {
          "identity": "6f707fc8-0250-4fd5-89b5-c0312bea7460"
        }
      },
      "error": {
        "code": "BulkRestoreArtifactsNotFound",
        "message": "Bulk Restore Artifacts not found",
        "details": [
          {
            "code": "SiteUrlNotFound",
            "message": "Site url 'https://contoso.com' could not be resolved",
            "target": "https://contoso.com"
          }
        ]
      }
    }
  ]
}
```

