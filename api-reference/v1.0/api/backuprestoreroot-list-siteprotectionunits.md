---
title: "List siteProtectionUnits"
description: "Get a list of the site protection units that are associated with a SharePoint protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 10/15/2024
---

# List siteProtectionUnits

Namespace: microsoft.graph

Get a list of the [siteProtectionUnit](../resources/siteprotectionunit.md) objects that are associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_list_siteprotectionunits" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-siteprotectionunits-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/protectionUnits/microsoft.graph.siteProtectionUnit
GET /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteProtectionUnits
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [siteProtectionUnit](../resources/siteprotectionunit.md) in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

> [!NOTE]
> The `siteName` and `siteWebUrl` properties are only available for the `Delegated` permission type.
>

## Examples

### Example 1: List all the siteProtectionUnits in a tenant

The following example shows how to get a list of all the **siteProtectionUnits** objects in a tenant.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_all_siteprotectionunit"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionUnits/microsoft.graph.siteProtectionUnit
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-all-siteprotectionunit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-all-siteprotectionunit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-all-siteprotectionunit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-all-siteprotectionunit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-all-siteprotectionunit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-all-siteprotectionunit-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-all-siteprotectionunit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.siteProtectionUnit)"
}
-->
```http
HTTP/1.1 200 OK

{
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/solutions/backupRestore/protectionUnits/microsoft.graph.siteProtectionUnit?$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee4532",
      "siteName": "Enhanced Restore IDC", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDC", // Newly Added
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "8f014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee5674",
      "siteName": "Enhanced Restore IDC - 1", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDCOne", // Newly Added
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "status": "unprotectRequested",
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e8517765",
      "siteName": "Enhanced Restore IDC - 2", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDCTwo", // Newly Added
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
    },
    {
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e850987",
      "siteName": "Enhanced Restore IDC - 3", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDCThree", // Newly Added
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "siteId": "contoso-jpn.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,1111110f-634f-4300-a841-3a8a2e851851",
      "siteName": "Who+", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/Whoplus", // Newly Added
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
    }
  ]
}
```

### Example 2: List the siteProtectionUnits associated with a SharePoint protection policy

The following example shows how to list all the **siteProtectionUnits** associated with a **sharePointProtectionPolicy**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_siteprotectionunit"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/siteProtectionUnits
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-siteprotectionunit-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-siteprotectionunit-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-siteprotectionunit-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-siteprotectionunit-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-siteprotectionunit-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-siteprotectionunit-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-siteprotectionunit-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.siteProtectionUnit)"
}
-->
```http
HTTP/1.1 200 OK

{
  "@odata.id": "/solutions/backupRestore/ProtectionPolicies(845457dc-4bb2-4815-bef3-8628ebd1952e)",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/siteProtectionUnits?&$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",
  "value": [
    {
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7088",
      "siteName": "Who+", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/Whoplus", // Newly Added
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "57014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd9876",
      "siteName": "Enhanced Restore IDC", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDC", // Newly Added
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "17014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd0087",
      "siteName": "Enhanced Restore IDC - 1", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDCOne", // Newly Added
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "8f014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd5432",
      "siteName": "Enhanced Restore IDC - 2", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDCTwo", // Newly Added
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
      "@odata.type": "#microsoft.graph.siteProtectionUnit",
      "id": "9b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "9fec8e78-bce4-4aaf-ab1b-5451cc387264",
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd8765",
      "siteName": "Enhanced Restore IDC - 3", // Newly Added
      "siteWebUrl": "https://contoso.sharepoint.com/teams/ERIDCThree", // Newly Added
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
