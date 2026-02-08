---
title: "driveItem: unarchive"
description: "Unarchive a drive item"
author: "dcun55"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---

# driveItem: unarchive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unarchive a [driveItem](../resources/driveitem.md).

When unarchiving a single recently archived file, the file is unarchived immediately. Otherwise, the archived file starts the reactivation process.

> [!NOTE]
> Unarchiving a driveItem file is not supported when the request includes the Prefer: respond-async header.

When unarchiving a folder using an asynchronous request, a [monitor URL](/graph/long-running-actions-overview) is returned in the response. Use the monitor URL to track progress until the operation completes.

> [!NOTE]
> Unarchiving a driveItem folder is supported only when the request includes the Prefer: respond-async header

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "driveitem-unarchive-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-unarchive-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /drive/root/unarchive
POST /drives/{drivesId}/root/unarchive
POST /shares/{sharesId}/root/unarchive
POST /drives/{drivesId}/items/{driveItemId}/unarchive
POST /drive/items/{driveItemId}/unarchive
POST /shares/{sharesId}/driveItem/unarchive
POST /drive/bundles/{driveItemId}/unarchive
POST /drive/special/{driveItemId}/unarchive
POST /drive/following/{driveItemId}/unarchive
```

## Request headers

| Name          | Description                                                                                               |
|:--------------|:----------------------------------------------------------------------------------------------------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Prefer        | respond-async. Indicates that the request is an async request. Optional.                                  |

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code for a [driveItem](../resources/driveitem.md) file. The response body will include the driveItem’s metadata, with the archiveStatus property included under the [FileFacet](../resources/file.md).

Otherwise, if successful, this action returns a `202 Accepted` response code, with a monitor URI, for a [driveItem](../resources/driveitem.md) folder.

## Examples

### Example 1: Unarchive driveItem file

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "unarchive-file"
}
-->
``` http
POST https://graph.microsoft.com/beta/drives/b!fMInbiL5dkK51VbATG0ddrCg6AJpEj9Lm4uGj5HgEi4guyuYp4W5SbH4dPfXTbCF/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/unarchive
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.file"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
    "file": {
        "archiveStatus": "reactivating",
        "hashes": {
            "quickXorHash": "Sy2meSLBupGTGjRSLAv3LPpWqwo="
        },
        "mimeType": "text/plain"
    }
}
```

### Example 2: Unarchive driveItem folder

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "unarchive-folder"
}
-->
``` http
POST https://graph.microsoft.com/beta/drives/b!fMInbiL5dkK51VbATG0ddrCg6AJpEj9Lm4uGj5HgEi4guyuYp4W5SbH4dPfXTbCF/items/014Y52UITTNSVUQI43PZBJMKLAY6LJBUVE/unarchive
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
