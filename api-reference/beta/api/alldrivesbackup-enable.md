---
title: "allDrivesBackup: enable"
description: "Enable full-service backup for OneDrive for work or school."
author: "vidula-verma"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# allDrivesBackup: enable

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable full-service [backup](../resources/alldrivesbackup.md) for OneDrive for work or school. All drives provisioned in OneDrive are automatically protected, without requiring manual policy creation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "alldrivesbackup-enable-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/alldrivesbackup-enable-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/allDrivesBackup/enable
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code and an [allDrivesBackup](../resources/alldrivesbackup.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "alldrivesbackupthis.enable"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/allDrivesBackup/enable 
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
  "status": "enabled",
  "lastRunDateTime": "0001-01-01T00:00:00Z",
  "lastModifiedBy": "fb80ea0c-ecbb-4bb2-b484-37d01f2a776f",
  "lastModifiedDateTime": "2025-09-21T19:09:52.9752849+00:00"
}
```

