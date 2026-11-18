---
title: "Update oneDriveForBusinessProtectionPolicy"
description: "Update the protection policy for the OneDrive service in Microsoft 365 tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 08/26/2024
---
# Update oneDriveForBusinessProtectionPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the protection policy for the OneDrive service in Microsoft 365. This method updates retention settings or adds a [driveProtectionUnit](../resources/driveprotectionunit.md) to or removes it from a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessprotectionpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the **oneDriveForBusinessProtectionPolicy** with the updated properties.

Supply only the properties to update.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name of the [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|driveExclusionUnits@delta|[driveExclusionUnit](../resources/driveexclusionunit.md) collection|Collection of [driveExclusionUnit](../resources/driveexclusionunit.md) objects to be added to or removed from the [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md). Use this property only when you want to modify the exclusion list for policies configured with [backupPolicyProtectionMode](../resources/enums.md#backuppolicyprotectionmode-values) set to `fullServiceBackup`.|
|driveProtectionUnits@delta|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|Collection of the driveProtectionUnit to be added/removed to the oneDriveForBusinessProtectionPolicy.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Updated retention settings for the policy. If **retentionSettings** is omitted, the existing retention settings are unchanged. You can update **retentionSettings** without adding or removing protection units.|

To remove a **driveProtectionUnit** from the policy, specify the `@removed` annotation in the request body for the protection unit together with the ID of the [driveProtectionUnit](../resources/driveprotectionunit.md).

## Response

If successful, this method returns a `200 OK` response code and an updated [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) in the response body.

The service returns the complete **retentionSettings** collection, rather than echoing the request collection. The response includes a fixed 14-day period (`P14D`) for the `R/PT10M` interval and the configured policy retention period for the `R/P1W` interval. The 14-day period is a service-defined backup tier, not a supported policy retention period for create or update requests.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Example 1: Add or remove protection units
The following example shows how to add or remove protection units from the policy.
#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_update"
}
-->
```http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e

{
  "displayName": "One Drive  Policy - Inadvertent data loss",
  "driveProtectionUnits@delta": [
    {
      "directoryObjectId": "1b014d8c-71fe-4d00-a01a-31850bc5b32c"
    },
    {
      "directoryObjectId": "2b014d8c-71fe-4d00-a01a-31850bc5b32c"
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
[!INCLUDE [sample-code](../includes/snippets/csharp/onedriveforbusinessprotectionpolicy-update-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onedriveforbusinessprotectionpolicy-update-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-update-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/onedriveforbusinessprotectionpolicy-update-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/onedriveforbusinessprotectionpolicy-update-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/onedriveforbusinessprotectionpolicy-update-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oneDriveForBusinessProtectionPolicy"
}
-->
```http
HTTP/1.1 200 OK

{
  "displayName": "OneDrive Policy - Inadvertent data loss",
  "driveProtectionUnits@delta": [
    {
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "directoryObjectId": "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
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
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z"
    },
    {
      "id": "67014d8c-71fe-4d00-a01a-31850bc5b32c",
      "directoryObjectId": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
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
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z"
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
      "directoryObjectId": "5767e382-71a9-4c07-bef7-bda97e09c0d2",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
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
      "lastModifiedDateTime": "2015-06-19T12:01:03.45Z"
    }
  ]
}
```

### Example 2: Update the retention period
The following example shows how to update the policy retention period to 180 days without changing its protection units.
#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_update_retention"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e
Content-Type: application/json

{
  "retentionSettings": [
    {
      "interval": "R/P1W",
      "period": "P180D"
    }
  ]
}
```

#### Response

The following example shows the response with the retention settings for both backup intervals, including the requested 180-day retention period.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oneDriveForBusinessProtectionPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
  "retentionSettings": [
    {
      "interval": "R/PT10M",
      "period": "P14D"
    },
    {
      "interval": "R/P1W",
      "period": "P180D"
    }
  ]
}
```
