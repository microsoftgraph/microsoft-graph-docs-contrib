---
title: "List browseSessions"
description: "Get a list of the browseSessionBase objects and their properties."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List browseSessions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [browseSessionBase](../resources/browsesessionbase.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-list-browsesessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-browsesessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/browseSessions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [browseSessionBase](../resources/browsesessionbase.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_browsesessionbase"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/browseSessions
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.browseSessionBase)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/browseSessions",
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointBrowseSession",
      "id": "ASAA3_9h-N8hJaHRT4L-FA4bBG-ttVmUEwbDuUeDxhm0oaOj1w",
      "restorePointDateTime": "2025-12-25T03:00:18Z",
      "status": "created",
      "createdDateTime": "2025-12-26T06:00:22Z",
      "expirationDateTime": "2025-12-29T06:00:20Z",
      "backupSizeInBytes": "454436",
      "siteId": "139459b5-c306-47b9-83c6-19b4a1a3a3d7"
    },
    {
      "@odata.type": "#microsoft.graph.oneDriveForBusinessBrowseSession",
      "id": "ASAA3_8kysv7AWN-Sb9JndIPy67ZWhpFmgIk2EKs05DqCIN25Q",
      "restorePointDateTime": "2025-12-26T03:00:56Z",
      "status": "created",
      "createdDateTime": "2025-12-26T05:56:03Z",
      "expirationDateTime": "2025-12-29T05:56:01Z",
      "backupSizeInBytes": "311659",
      "directoryObjectId": "9a451a5a-2402-42d8-acd3-90ea088376e5"
    },
    {
      "@odata.type": "#microsoft.graph.sharePointBrowseSession",
      "id": "ASAA3_-8mIMTToEDSJypqJz2TgGbtVmUEwbDuUeDxhm0oaOj1w",
      "restorePointDateTime": "2025-12-26T03:00:56Z",
      "status": "created",
      "createdDateTime": "2025-12-26T05:54:36Z",
      "expirationDateTime": "2025-12-29T05:54:35Z",
      "backupSizeInBytes": "454433",
      "siteId": "139459b5-c306-47b9-83c6-19b4a1a3a3d7"
    }
  ]
}
```

