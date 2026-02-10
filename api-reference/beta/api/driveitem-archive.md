---
title: "driveItem: archive"
description: "Archive a drive item."
author: "dcun55"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# driveItem: archive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Archive a [driveItem](../resources/driveitem.md).

When archiving a single active file using a synchronous request, the file is archived immediately.

> [!NOTE]
> Archiving a driveItem file is not supported when the request includes the Prefer: respond-async header.

When archiving a folder using an asynchronous request, a [monitor URL](/graph/long-running-actions-overview) is returned in the response. Use the monitor URL to track progress until the operation completes.

> [!NOTE]
> Archiving a driveItem folder is supported only when the request includes the Prefer: respond-async header

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "driveitem-archive-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-archive-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drive/root/archive
POST /drives/{drivesId}/root/archive
POST /shares/{sharesId}/root/archive
POST /drives/{drivesId}/items/{driveItemId}/archive
POST /drive/items/{driveItemId}/archive
POST /shares/{sharesId}/driveItem/archive
POST /drive/bundles/{driveItemId}/archive
POST /drive/special/{driveItemId}/archive
POST /drive/following/{driveItemId}/archive
```

## Request headers

| Name          | Description                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Prefer        | respond-async. Indicates that the request is an async request. Optional.                                  |

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code for a [driveItem](../resources/driveitem.md) file.

Otherwise, if successful, this action returns a `202 Accepted` response code, with a monitor URI, is returned for a [driveItem](../resources/driveitem.md) folder.

## Examples

### Example 1: Archive driveItem file

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "archive-file"
}
-->
``` http
POST https://graph.microsoft.com/beta/drives/b!fMInbiL5dkK51VbATG0ddrCg6AJpEj9Lm4uGj5HgEi4guyuYp4W5SbH4dPfXTbCF/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/archive
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Archive driveItem folder

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "archive-folder"
}
-->
``` http
POST https://graph.microsoft.com/beta/drives/b!fMInbiL5dkK51VbATG0ddrCg6AJpEj9Lm4uGj5HgEi4guyuYp4W5SbH4dPfXTbCF/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/archive
Prefer: respond-async
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/monitor/4A3407B5-88FC-4504-8B21-0AABD3412717
```


