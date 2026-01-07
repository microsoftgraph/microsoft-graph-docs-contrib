---
title: "List restoreSessionBase objects"
description: "Get a list of restoreSessionBase objects and their properties."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 11/10/2024
---

# List restoreSessionBase objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [restoreSession](../resources/restoresessionbase.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_list_restoresessions" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-restoresessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/restoreSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [restoreSessionBase](../resources/restoresessionbase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "restoresession_list"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/restoreSessions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/restoresession-list-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/restoresession-list-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/restoresession-list-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/restoresession-list-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/restoresession-list-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/restoresession-list-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/restoresession-list-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.restoreSessionBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#restoreSessions",
  "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/backupRestore/sharepointRestoreSessions?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharepointRestoreSession",
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18b",
      "status": "active",
      "restoreJobType": "standard",
      "restoreSessionArtifactCount": {
        "total": 2,
        "completed": 1,
        "inProgress": 1,
        "failed": 0
      },
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2023-03-30T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User2"
        }
      },
      "lastModifiedDateTime": "2023-03-30T12:01:03.45Z",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.exchangeRestoreSession",
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18b",
      "status": "active",
      "restoreJobType": "standard",
      "restoreSessionArtifactCount": {
        "total": 2,
        "completed": 1,
        "inProgress": 1,
        "failed": 0
      },
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2023-03-30T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User2"
        }
      },
      "lastModifiedDateTime": "2023-03-30T12:01:03.45Z",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.oneDriveForBusinessRestoreSession",
      "id": "959ba739-70b5-43c4-8c90-b2c22014f18b",
      "status": "active",
      "restoreJobType": "standard",
      "restoreSessionArtifactCount": {
        "total": 2,
        "completed": 1,
        "inProgress": 1,
        "failed": 0
      },
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2023-03-30T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User2"
        }
      },
      "lastModifiedDateTime": "2023-03-30T12:01:03.45Z",
      "error": null
    },
    {
      "@odata.type": "#microsoft.graph.sharepointRestoreSession",
      "id": "c86a1eaf-1925-46cc-8ab2-567302dd78a9",
      "status": "failed", // Newly Added
      "restoreJobType": "standard",
      "restoreSessionArtifactCount": {
        "total": 2,
        "completed": 0,
        "inProgress": 0,
        "failed": 2
      },
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2023-03-30T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User2"
        }
      },
      "lastModifiedDateTime": "2023-03-30T12:01:03.45Z",
      "error": null
    }
  ]
}
```
