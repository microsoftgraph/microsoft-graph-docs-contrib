---
title: "Create oneDriveForBusinessProtectionPolicy"
description: "Create a protection policy for a M365 service OneDrive."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Create oneDriveForBusinessProtectionPolicy

Namespace: microsoft.graph

Create a protection policy for the OneDrive service in Microsoft 365. When the policy is created, its state is set to `inactive`. Users can also provide a list of protection units under the policy.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_post_onedriveforbusinessprotectionpolicies" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-post-onedriveforbusinessprotectionpolicies-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

You can specify the following properties when creating a **oneDriveForBusinessProtectionPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the SharePoint Protection Policy. Required|
|driveProtectionUnits|Collection([driveProtectionUnit](../resources/driveprotectionunit.md))|Collection of the driveProtectionUnit to be added to the oneDriveForBusinessProtectionPolicy. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object in the response body.

For a list of possible error responses, see [Backup Storage API error responses](/graph/backup-storage-error-codes).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_create"
}
-->
```http
POST https://graph.microsoft.com/v1.0/solutions/backupRestore/oneDriveForBusinessProtectionPolicies

{
  "displayName": "OneDrive For Business Protection Policy",
  "driveProtectionUnits": [
    {
      "directoryObjectId": "cdd3a849-dcaf-4a85-af82-7e39fc14019"
    },
    {
      "directoryObjectId": "9bc069da-b746-41a4-89ab-26125c6373c7"
    },
    {
      "directoryObjectId": "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/onedriveforbusinessprotectionpolicy-create-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/onedriveforbusinessprotectionpolicy-create-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onedriveforbusinessprotectionpolicy-create-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-create-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/onedriveforbusinessprotectionpolicy-create-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/onedriveforbusinessprotectionpolicy-create-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/onedriveforbusinessprotectionpolicy-create-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oneDriveForBusinessProtectionPolicy"
}
-->

```http
HTTP/1.1 201 Created
Content-Location: https://graph.microsoft.com/v1.0/solutions/backupRestore/ProtectionPolicies/b218eb4a-ea72-42bd-8f0b-d0bbf794bec7

{
  "@odata.context": "/solutions/backupRestore/$metadata#oneDriveForBusinessProtectionPolicies/$entity",
  "id": "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
  "displayName": "OneDrive Protection Policy",
  "status": "inactive",
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
      "email": "User2@constoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "User2"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12:01:03.45Z",
  "retentionSettings": [
    {
      "interval": "R/PT10M",
      "period": "P2W"
    },
    {
      "interval": "R/P1W",
      "period": "P1Y"
    }
  ]
}
```
