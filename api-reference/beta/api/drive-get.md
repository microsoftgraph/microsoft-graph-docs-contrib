---
author: spgraph-docs-team
description: "Retrieve the properties and relationships of a Drive resource."
ms.date: 09/10/2017
title: Get drive
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
ms.topic: reference
---
# Get drive

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [drive](../resources/drive.md) resource.

A drive is the top-level container for a file system, such as OneDrive or SharePoint document libraries.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "drive_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/drive-get-permissions.md)]

## HTTP request

### Get the current OneDrive of a user

The signed-in user's drive (when using delegated authentication) can be accessed from the `me` singleton.

If a user has a license for OneDrive but their OneDrive isn't set up yet, this request automatically provisions the user's drive, when using delegated authentication.

<!-- { "blockType": "ignored" } -->

```http
GET /me/drive
```

### Get the OneDrive of a user

To access a user's OneDrive or OneDrive for Business, your app must request the **drive** relationship on the User resource.

If a user has a license for OneDrive but their OneDrive isn't set up yet, this request automatically provisions the user's drive, when using delegated authentication.

<!-- { "blockType": "ignored" } -->

```http
GET /users/{idOrUserPrincipalName}/drive
```

#### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _idOrUserPrincipalName_     | string | Required. The identifier for the user object who owns the OneDrive. |

### Get the document library associated with a group

To access a Group's default document library, your app requests the **drive** relationship on the Group.

<!-- { "blockType": "ignored" } -->

```http
GET /groups/{groupId}/drive
```

#### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _groupId_      | string | Required. The identifier for the group that owns the document library. |

### Get the document library for a site

To access a [Site's](../resources/site.md) default document library, your app requests the **drive** relationship on the Site.

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{siteId}/drive
```
#### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _siteId_       | string | Required. The identifier for the site that contains the document library. |

### Get a drive by ID

If you have the unique identifier for a drive, you can access it directly from the top-level drives collection.

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{driveId}
```
#### Path parameters

| Parameter name | Value  | Description                                       |
|:---------------|:-------|:--------------------------------------------------|
| _driveId_      | string | Required. The identifier for the drive requested. |

## Optional query parameters

These methods support the [$select query parameter][odata-query-parameters] to shape the response.

## Response

Each of these methods returns a [Drive resource][drive-resource] for the matching drive in the response body.

### Error response codes

If the drive doesn't exist and can't be provisioned automatically (when using delegated authentication) an `HTTP 404` response is returned.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-drive-default" } -->

```msgraph-interactive
GET /me/drive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-drive-default-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-drive-default-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-drive-default-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-drive-default-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-drive-default-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-drive-default-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-drive-default-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-drive-default-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- { "blockType": "response", "@odata.type": "microsoft.graph.drive", "truncated": true, "name": ["get-drive-by-id", "get-drive-by-group", "get-drive-by-user", "get-drive-default" , "get-drive-by-site-id",] } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "b!t18F8ybsHUq1z3LTz8xvZqP8zaSWjkFNhsME-Fepo75dTf9vQKfeRblBZjoSQrd7",
    "driveType": "business",
    "owner": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "Ryan Gregg"
        }
    },
    "quota": {
        "deleted": 256938,
        "remaining": 1099447353539,
        "state": "normal",
        "total": 1099511627776
    }
}
```

[drive-resource]: ../resources/drive.md
[odata-query-parameters]: /graph/query-parameters

<!--
{
  "type": "#page.annotation",
  "description": "Get metadata for a OneDrive, OneDrive for Business, or Microsoft 365 group drive",
  "keywords": "drive,onedrive,default drive,group drive",
  "section": "documentation",
  "tocPath": "Drives/Get drive",
  "suppressions": [
  ]
}
-->
