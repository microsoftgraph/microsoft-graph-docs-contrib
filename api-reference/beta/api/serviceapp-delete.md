---
title: "Delete serviceApp"
description: "Delete a serviceApp."
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Delete serviceApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [serviceApp](../resources/serviceapp.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-delete-serviceapps-permissions"
}
-->
<!--[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-delete-serviceapps-permissions.md)]-->
|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Not supported.|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|BackupRestore-Control.ReadWrite.All|BackupRestore-Control.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/backupRestore/serviceApps/{serviceAppId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_serviceapp"
}
-->
``` http
DELETE /solutions/backupRestore/serviceApps/{71633878-8321-4950-bfaf-ed285bdd1461}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Location: /solutions/backupRestore/serviceApps/71633878-8321-4950-bfaf-ed285bdd1461
```
