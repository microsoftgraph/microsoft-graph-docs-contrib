---
title: "oneDriveForBusinessProtectionPolicy: Create"
description: "Create the Protection Policy for a M365 service OneDrive"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# oneDriveProtectionPolicy: create

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Policy will be created in 'inactive' state. User can also provide a list of Protection Units under the policy.

Refer to [user](../resources/user.md) for the format of userId.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessprotectionpolicy-create-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-create-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

You can specify the following properties when creating a **oneDriveForBusinessProtectionPolicy**.

```json
{
  "displayName": "String",
  "driveProtectionUnits": [
    {
      "userId": "String"
    },
    {
      "userId": "String"
    }
  ]
}
```

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the SharePoint Protection Policy.|
|driveProtectionUnits|Collection([driveProtectionUnit](../resources/driveprotectionunit.md))|Collection of the driveProtectionUnit to be added to the oneDriveForBusinessProtectionPolicy.|

## Response

If successful, this method returns a `201 Created` response code and a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy.create"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies
Authorization: Bearer <Access-Token>
Odata-Version: 4.0
Content-Type: application/json 
Accept: application/json
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.oneDriveForBusinessProtectionPolicy"
}
-->

``` http
HTTP/1.1 201 Created
Content–Type: application / json
Content-Location: solutions/backupRestore/ProtectionPolicies/b218eb4a-ea72-42bd-8f0b-d0bbf794bec7
Odata – Version: 4.0

{
  "@odata.context": " /solutions/backupRestore/$metadata#oneDriveForBusinessProtectionPolicies/$entity",
  "id": "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
  "displayName": "OneDrive Protection Policy",
  "status": "inactive",
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
      "email": "def@constoso.com",
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "displayName": "DEF"
    }
  },
  "lastModifiedDateTime": "2015-06-19T12-01-03.45Z",
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

