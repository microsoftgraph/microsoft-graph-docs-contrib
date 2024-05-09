---
title: "exchangeProtectionPolicy: Update"
description: "Updates the Protection Policy for a M365 service Exchange"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Update exchangeProtectionPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Adds/removes [mailboxprotectionunit](../resources/mailboxprotectionunit.md) to [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object.

To remove, specify the @removed annotation in the request body for the respective protection unit together with the mailboxProtectionUnit.Id. [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "exchangeprotectionpolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/exchangeprotectionpolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name of the [oneDriveForBusinessProtectionPolicy](../resources/exchangeprotectionpolicy.md)|
|mailboxProtectionUnits@delta|Collection([mailboxProtectionUnit](../resources/mailboxprotectionunit.md))|Collection of the mailboxProtectionUnit to be added/removed to the exchangeProtectionPolicy.|

## Response

If successful, this method returns a `200 OK` response code and an updated [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_exchangeprotectionpolicy"
}
-->
``` http
PATCH /solutions/backupRestore/exchangeProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e
Authorization: Bearer <Access-Token>
Odata-Version: 4.0

{
  "displayName": "Exchange Policy - Inadvertent data loss",
  "userMailboxProtectionUnits@delta": [
    {
      "userId": "1b014d8c-71fe-4d00-a01a-31850bc5b32c" //Create a new user Protection unit and add it under the policy.
    },
    {
      "userId": "2b014d8c-71fe-4d00-a01a-31850bc5b32c"
    }
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
    }
  ]
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content–Type: application / json
Odata–Version: 4.0
{
  "displayName": "Exchange Policy - Inadvertent data loss",
  "userMailboxProtectionUnits@delta": [
    {
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "userId": "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "status": "protectRequested",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "createdDateTime": "2015-06-19T12-01-03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      "id": "67014d8c-71fe-4d00-a01a-31850bc5b32c",
      "userId": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "status": "protectRequested",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "createdDateTime": "2015-06-19T12-01-03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12-01-03.45Z"
    },
    {
      "id": "99954f18-c8ec-4b62-85bf-cdf3b70b140e",
      "userId": "7b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "status": "removeRequested",
      "createdBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "createdDateTime": "2015-06-19T12-01-03.45Z",
      "lastModifiedBy": {
        "application": {
          "id": "1fec8e78-bce4-4aaf-ab1b-5451cc387264",
          "displayName": "Microsoft Enhanced Restore"
        },
        "user": {
          "email": "abc@contoso.com",
          "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
          "displayName": "ABC"
        }
      },
      "lastModifiedDateTime": "2015-06-19T12-01-03.45Z"
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
    }
  ]
}
```
