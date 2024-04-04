---
author: spgraph-docs-team
description: "List a set of items recently used by the signed-in user."
ms.date: 09/10/2017
title: List Recent Files
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.topic: reference
---
# List recent files

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

## Response

This method returns a collection of [DriveItem](../resources/driveitem.md) resources for items that the owner of the drive recently accessed.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "view-recent-files" } -->

```msgraph-interactive
GET /me/drive/recent
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/view-recent-files-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/view-recent-files-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/view-recent-files-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/view-recent-files-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/view-recent-files-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/view-recent-files-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/view-recent-files-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/view-recent-files-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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

Some driveItems returned from the **recent** action includes the **remoteItem** facet that indicates the items are from another drive.
To access the original driveItem object, you need to make a request, using the information provided in **remoteItem** in the following format:

<!-- { "blockType": "ignored", "name": "drives-get-remoteitem" } -->

```http
GET /drives/{remoteItem-driveId}/items/{remoteItem-id}
```

<!--
{
  "type": "#page.annotation",
  "description": "Retrieve a list of recently used files for the owner of the drive.",
  "keywords": "drive,onedrive.drive,default drive",
  "section": "documentation",
  "tocPath": "Drives/Recent files",
  "suppressions": [
  ]
}
-->

