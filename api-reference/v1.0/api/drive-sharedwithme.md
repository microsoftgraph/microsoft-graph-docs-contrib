---
author: "JeremyKelley"
description: "Get a list of driveItem objects shared with the owner of a drive."
title: "drive: sharedWithMe"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: apiPageType
---

# drive: sharedWithMe

Namespace: microsoft.graph

Get a list of [driveItem](../resources/driveitem.md) objects shared with the owner of a [drive](../resources/drive.md).

The **driveItems** returned from the **sharedWithMe** method always include the [**remoteItem**](../resources/remoteitem.md) facet that indicates they are items from a different drive.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                              |
|:---------------------------------------|:-------------------------------------------------------------------------|
| Delegated (work or school account)     | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |
| Delegated (personal Microsoft account) | Files.Read.All, Files.ReadWrite.All                                      |
| Application                            | Not supported. |

> **Note:**
>
> * A `/sharedWithMe` request succeeds with `Files.Read` or `Files.ReadWrite` permissions; however, some properties might be missing.
> * You can't access shared items returned from this API if the request doesn't contain one of the `*.All` permissions.

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/drive/sharedWithMe
```

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [driveItem](../resources/driveitem.md) objects in the response body.

By default, this method returns items shared within your own tenant. To include items shared from external tenants, append `?allowexternal=true` to a GET request.

## Examples

### Example 1: Get driveItems shared with me

The following example gets a collection of [driveItem](../resources/driveitem.md) resources that are shared with the owner of the drive.

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_driveItems_shared_with_me"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/drive/sharedWithMe
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-driveitems-shared-with-me-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-driveitems-shared-with-me-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-driveitems-shared-with-me-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-driveitems-shared-with-me-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-driveitems-shared-with-me-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-driveitems-shared-with-me-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-driveitems-shared-with-me-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-driveitems-shared-with-me-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response that returns items shared with the signed-in user, because the drive is the user's default drive.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.driveItem)",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "1312abc",
      "remoteItem": {
        "id": "1991210caf!192",
        "name": "March Proposal.docx",
        "file": { },
        "size": 19121,
        "parentReference": {
          "driveId": "1991210caf",
          "id": "1991210caf!104"
        }
      }
    },
    {
      "id": "1312def",
      "remoteItem": {
        "id": "1991210caf!1991",
        "name": "Team Roster.xlsx",
        "file": { },
        "size": 37619,
        "parentReference": {
          "driveId": "1991210caf",
          "id": "1991210caf!104"
        }
      }
    },
    {
      "id": "1312ghi",
      "remoteItem": {
        "id": "987def!654",
        "name": "January Service Review.pptx",
        "file": { },
        "size": 145362,
        "parentReference": {
          "driveId": "987def",
          "id": "987def!321"
        }
      }
    }
  ]
}
```

### Example 2: Get metadata about a shared driveItem object

The following example shows how to access metadata about the shared **driveItem** with the name `January Service Review.pptx` that requires a request using the **driveId** of the **parentReference** within the **remoteItem** object.

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "drives-get-remoteitem-metadata",
  "sampleKeys": ["987def", "987def!654"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/drives/987def/items/987def!654
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/drives-get-remoteitem-metadata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/drives-get-remoteitem-metadata-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/drives-get-remoteitem-metadata-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/drives-get-remoteitem-metadata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/drives-get-remoteitem-metadata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/drives-get-remoteitem-metadata-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/drives-get-remoteitem-metadata-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/drives-get-remoteitem-metadata-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.driveItem",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "987def!654",
  "name": "January Service Review.pptx",
  "file": { },
  "size": 145362,
  "parentReference": {
    "driveId": "987def",
    "id": "987def!321"
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "List the items shared with the owner of a drive.",
  "keywords": "drive,onedrive.drive,default drive",
  "section": "documentation",
  "tocPath": "Sharing/Shared with me",
  "suppressions": [
  ]
}
-->
