---
title: "Update sharePointProtectionPolicy"
description: "Update a SharePoint protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Update sharePointProtectionPolicy

Namespace: microsoft.graph

Update a [SharePoint protection policy](../resources/sharepointprotectionpolicy.md). This method adds a [siteprotectionunit](../resources/siteprotectionunit.md) to or removes it from the protection policy.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointprotectionpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of following properties to update **sharePointProtectionPolicy** object.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name of the [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md). Optional|
|siteProtectionUnits@delta|Collection([siteProtectionUnit](../resources/siteprotectionunit.md))|Collection of siteProtectionUnit objects to be added to or removed from the [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md). Required.|

To remove a **siteProtectionUnit** from the policy, specify the `@removed` annotation in the request body for the protection unit together with the ID of the [siteProtectionUnit](../resources/siteprotectionunit.md).

## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_update"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e
Content-Type: application/json

{
  "displayName": "SharePoint Policy - Inadvertent data loss",
  "siteProtectionUnits@delta": [
    {
      "siteId": "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c" //Create a new siteProtectionUnit.
    },
    {
      "siteId": "contoso.sharepoint.com,d9ecf079-9b13-4376-ac5d-f242dda55626,746dbcc1-fa2b-4120-b657-2670bae5bb6f"
    },
    {
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022"
    },
    {
      "siteId": "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb946c"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "99954f18-c8ec-4b62-85bf-cdf3b70b140e"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "4267e382-71a9-4c07-bef7-bda97e09c0d2"
    },
    {
      "@removed": {
        "reason": "changed"
      },
      "id": "3667e382-71a9-4c07-bef7-bda97e09c0d2"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sharepointprotectionpolicy-update-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sharepointprotectionpolicy-update-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sharepointprotectionpolicy-update-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sharepointprotectionpolicy-update-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sharepointprotectionpolicy-update-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sharepointprotectionpolicy-update-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointProtectionPolicy"
}
-->
```http
HTTP/1.1 200 OK

{
  "displayName": "SharePoint Policy - Inadvertent data loss",
  "siteProtectionUnits@delta": [
    {
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,d9ecf079-9b13-4376-ac5d-f242dda55626,746dbcc1-fa2b-4120-b657-2670bae5bb6f",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "status": "protectRequested",
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
      "error": null
    },
    {
      "id": "67014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,fd1a778f-263e-4c43-acdf-d5c2519d80eb,c06016db-dfec-4f79-83a1-09c6dbfd7022",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "status": "protectRequested",
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
      "error": null
    },
    {
      "id": "56014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-98356ccfas5y",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "status": "protectRequested",
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
      "error": null
    },
    {
      "id": "32014d8c-71fe-4d00-a01a-31850bc5b32c",
      "siteId": "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb8970",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "status": "protectRequested",
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
      "error": null
    },
    {
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "id": "99954f18-c8ec-4b62-85bf-cdf3b70b140e",
      "siteId": "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fbrtys",
      "status": "removeRequested",
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
      "error": null
    },
    {
      //Error scenario

      "@contentId": "3467e382-71a9-4c07-bef7-bda97e09c0d2", // To add context and more traceability.
      "@Core.DataModificationException": {
        "info": {
          "code": "Invalid",
          "message": "The identifier to be removed from the Protection Policy does not exist"
        },
        "failedOperation": "remove",
        "responseCode": 409
      },
      "id": "4267e382-71a9-4c07-bef7-bda97e09c0d2"
    },
    {
      "id": "3667e382-71a9-4c07-bef7-bda97e09c0d2",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "siteId": "contoso.sharepoint.com,bf6fb551-d508-4946-a439-b2a6154fc1d9,65a04b8b-1f44-442b-a1fc-9e5852fb123c",
      "status": "removeRequested",
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
      "error": null
    }
  ]
}
```
