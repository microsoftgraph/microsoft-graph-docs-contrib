---
title: "List driveProtectionUnits"
description: "Get a list of the drive protection units that are associated with a OneDrive for work or school protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 10/15/2024
---
# List driveProtectionUnits

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [driveProtectionUnit](../resources/driveprotectionunit.md) objects that are associated with a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_list_driveprotectionunits" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-driveprotectionunits-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/protectionUnits/microsoft.graph.driveProtectionUnit
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveProtectionUnits
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [driveProtectionUnit](../resources/driveprotectionunit.md) in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: List all the driveProtectionUnits in a tenant

The following example shows how to get a list of all the **driveProtectionUnits** objects in a tenant.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_all_driveprotectionunit"
}
-->
``` http
GET /solutions/backupRestore/protectionUnits/microsoft.graph.driveProtectionUnit
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-all-driveprotectionunit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-all-driveprotectionunit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-all-driveprotectionunit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-all-driveprotectionunit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-all-driveprotectionunit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-all-driveprotectionunit-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-all-driveprotectionunit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.driveProtectionUnit)"
}
-->
``` http
HTTP/1.1 200 OK

{
  "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/backupRestore/protectionUnits/microsoft.graph.driveProtectionUnit?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "directoryObjectId": "384974e2-72cd-48de-a6e8-6985d7c5db90",
      "displayName": "Jefferson Lee", // Newly Added
      "email": "lee@contoso.com", // Newly Added
      "status": "unprotected",
      "protectionSources": "none",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "8f014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "781d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Mastura Ibrahim", // Newly Added
      "email": "ibrahim@contoso.com", // Newly Added
      "status": "protected",
      "protectionSources": "manual, dynamicRule",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "2d1d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Esmira Musayeva", // Newly Added
      "email": "esmira@contoso.com", // Newly Added
      "status": "unprotected",
      "protectionSources": "none",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "2e1d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Ahmad Hakiki", // Newly Added
      "email": "ahmad@contoso.com", // Newly Added
      "status": "protectRequested",
      "protectionSources": "manual",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "directoryObjectId": "2w1d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Rashmi Mishra ", // Newly Added
      "email": "eddyb@contoso.com", // Newly Added
      "status": "unprotected",
      "protectionSources": "none",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    }
  ]
}
```

### Example 2: List the driveProtectionUnits associated with a OneDrive for work or school protection policy

The following example shows how to list all the **driveProtectionUnits** associated with a **oneDriveForBusinessProtectionPolicy**.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_driveprotectionunit"
}
-->
``` http
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveProtectionUnits
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-driveprotectionunit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-driveprotectionunit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-driveprotectionunit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-driveprotectionunit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-driveprotectionunit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-driveprotectionunit-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-driveprotectionunit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.driveProtectionUnit)"
}
-->
``` http
HTTP/1.1 200 OK

{
  "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveProtectionUnits?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "384974e2-72cd-48de-a6e8-6985d7c5db90",
      "displayName": "Jefferson Lee", // Newly Added
      "email": "lee@contoso.com", // Newly Added
      "status": "protectRequested",
      "protectionSources": "manual",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "57014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "184d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Mastura Ibrahim", // Newly Added
      "email": "ibrahim@contoso.com", // Newly Added
      "status": "protectRequested",
      "protectionSources": "dynamicRule",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "17014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "344d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Esmira Musayeva", // Newly Added
      "email": "esmira@contoso.com", // Newly Added
      "status": "protectRequested",
      "protectionSources": "dynamicRule",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "8f014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "781d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Ahmad Hakiki", // Newly Added
      "email": "ahmad@contoso.com", // Newly Added
      "status": "removeRequested",
      "protectionSources": "none",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "directoryObjectId": "2d1d9337-d8f0-456e-92cd-00a3abdd2093",
      "displayName": "Jeffry Goh ", // Newly Added
      "email": "jeffry@contoso.com", // Newly Added
      "status": "protected",
      "protectionSources": "manual",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "createdDateTime": "2015-06-19T12:01:03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "User1@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "User1"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
      "error": null,
      "offboardRequestedDateTime": "0001-01-01T00:00:00.0000000Z"
    }
  ]
}
```
