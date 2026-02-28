---
title: "List sharePointBrowseSessions"
description: "Get a list of the sharePointBrowseSession objects and their properties."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List sharePointBrowseSessions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [sharePointBrowseSession](../resources/sharepointbrowsesession.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "backuprestoreroot_list_sharepointbrowsesessions" } -->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-list-sharepointbrowsesessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/sharePointBrowseSessions
```

## Optional query parameters

This method does not support query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharePointBrowseSession](../resources/sharepointbrowsesession.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_sharepointbrowsesession"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointBrowseSessions
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointBrowseSession)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/sharePointBrowseSessions",
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointBrowseSessions",
      "id": "ASAA3_8kysv7AWN-Sb9JndIPy67ZWhpFmgIk2EKs05DqCIN25Q",
      "restorePointDateTime": "2025-12-26T03:00:56Z",
      "status": "created",
      "createdDateTime": "2025-12-26T05:56:03Z",
      "expirationDateTime": "2025-12-29T05:56:01Z",
      "backupSizeInBytes": "311659",
      "siteId": "9a451a5a-2402-42d8-acd3-90ea088376e5"
    }
  ]
}
```

