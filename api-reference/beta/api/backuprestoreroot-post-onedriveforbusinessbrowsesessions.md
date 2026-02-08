---
title: "Create oneDriveForBusinessBrowseSession"
description: "Create a new oneDriveForBusinessBrowseSession object."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Create oneDriveForBusinessBrowseSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-post-onedriveforbusinessbrowsesessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-post-onedriveforbusinessbrowsesessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessBrowseSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) object.

You can specify the following properties when you create a **oneDriveForBusinessBrowseSession**.

|Property|Type|Description|
|:---|:---|:---|
|restorePointId|String|The ID of the [restorePoint](../resources/restorepoint.md) on which the user wants to create a browse session. Required.|

## Response

If successful, this method returns a `201 Created` response code and an [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_onedriveforbusinessbrowsesession_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions
Content-Type: application/json

{
  "restorePointId": "TXpSbE5HUXpNR1l0TldZMFlpMDBNMk16TFdFeFl6WXRZall3TTJFeFl6Sm1OV000WHpFPV8xNzQ5NTY3MDAwXzE0XzE="
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oneDriveForBusinessBrowseSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/sharePointBrowseSessions/$entity",
    "id": "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
    "restorePointDateTime": "2026-01-18T03:00:15Z",
    "status": "created",
    "createdDateTime": "2026-01-20T10:42:27Z",
    "expirationDateTime": "2026-01-23T10:42:24Z",
    "backupSizeInBytes": "584316",
    "directoryObjectId": "f3846f8d-80a6-4480-ae20-5966ebdf2009"
}
```

