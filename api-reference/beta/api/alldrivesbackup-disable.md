---
title: "allDrivesBackup: disable"
description: "Disable full-service backup for OneDrive for work or school."
author: "vidula-verma"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# allDrivesBackup: disable

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Disable full-service [backup](../resources/alldrivesbackup.md) for OneDrive for work or school. When this action is performed, all drives previously attached to a policy remain in that policy, whereas other drives transition to the `removed` state. Two modes are available for disabling full-service backup:

- **EnableAll**: All existing policies become `active`, and the drives attached to these policies are marked as `protected`.
- **DisableAll**: All existing policies become `inactive`, and the drives attached to these policies are marked as `unprotected`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "alldrivesbackup-disable-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/alldrivesbackup-disable-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/allDrivesBackup/disable
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|actionOnExistingPolicy|fullServiceBackupDisableMode|Determines the desired policy state after disabling full-service backup. The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|

## Response

If successful, this action returns a `202 Accepted` response code and an [allDrivesBackup](../resources/alldrivesbackup.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "alldrivesbackupthis.disable"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/allDrivesBackup/disable 
Content-Type: application/json

{ 
  "actionOnExistingPolicy": "enableAll" 
} 
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.allDrivesBackup"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "@odata.context": "/solutions/backupRestore/$metadata#allDrivesBackup/$entity",
  "policyId": "03c27227-bff5-449d-8886-07b91b1fe8c0",
  "status": "disabled",
  "actionOnExistingPolicy": "enableAll",
  "lastRunDateTime": "2025-02-03T00:00:00Z",
  "lastModifiedBy": "fb80ea0c-ecbb-4bb2-b484-37d01f2a776f",
  "lastModifiedDateTime": "2025-09-21T19:09:52.9752849+00:00"
}
```

