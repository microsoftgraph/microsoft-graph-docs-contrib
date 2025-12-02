---
author: spgraph-docs-team
ms.date: 09/10/2017
title: "drive: recent (deprecated)"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
description: "List a set of items recently used by the signed-in user."
doc_type: apiPageType
---

# drive: recent (deprecated)

Namespace: microsoft.graph

> [!CAUTION]
> The **recent** API is deprecated and will operate in a degraded state until November, 2026, after which it will stop returning data.

List a set of items recently used by the signed-in user.
This collection includes items that are in the user's drive and items they have access to from other drives.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "drive_recent" } -->
[!INCLUDE [permissions-table](../includes/permissions/drive-recent-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
GET /me/drive/recent
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response
This method returns a collection of [DriveItem](../resources/driveitem.md) resources for items that the owner of the drive recently accessed.

## Examples

### Request

THe following example shows the request. 

<!-- { "blockType": "request", "name": "view-recent-files" } -->

```msgraph-interactive
GET /me/drive/recent
```
---

### Response

THe following example shows the response. 

<!-- {
    "blockType": "response",
     "@odata.type": "Collection(microsoft.graph.driveItem)",
     "truncated": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "1312abc!1231",
      "remoteItem":
      {
        "id": "1991210caf!192",
        "name": "March Proposal.docx",
        "file": { },
        "size": 19121,
        "parentReference": {
          "driveId": "1991210caf",
          "id": "1991210caf!104"
        }
      },
      "fileSystemInfo": {
        "lastAccessedDateTime": "2017-02-20T19:13:00Z"
      }
    },
    {
      "id": "1312def!9943",
      "name": "Vacation.jpg",
      "file": { },
      "size": 37810,
      "parentReference": {
        "driveId": "1312def",
        "id": "1312def!123"
      },
      "fileSystemInfo": {
        "lastAccessedDateTime": "2017-02-20T16:43:21Z"
      }
    }
  ]
}
```

## Remarks

Some driveItems returned from the **recent** action includes the **remoteItem** facet that indicates that items are from another drive.
To access the original **driveItem** object, you need to make a request using the information provided in **remoteItem** in the following format:

<!-- { "blockType": "ignored", "name": "drives-get-remoteitem" } -->

```http
GET /drives/{remoteItem-driveId}/items/{remoteItem-id}
```

<!-- {
  "type": "#page.annotation",
  "description": "Retrieve a list of recently used files for the owner of the drive.",
  "keywords": "drive,onedrive.drive,default drive",
  "section": "documentation",
  "tocPath": "Drives/Recent files",
  "suppressions": [
  ]
} -->
