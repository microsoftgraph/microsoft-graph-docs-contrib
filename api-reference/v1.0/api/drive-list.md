---
author: spgraph-docs-team
ms.date: 09/10/2017
title: List Drives
ms.localizationpriority: high
ms.prod: "sharepoint"
description: "Retrieve the list of Drive resources available for a target User, Group, or Site."
doc_type: apiPageType
---
# List available drives

Namespace: microsoft.graph

Retrieve the list of [Drive](../resources/drive.md) resources available for a target User, Group, or [Site](../resources/site.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "drive_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/drive-list-permissions.md)]

## HTTP request

### List a group's drives
To list the document libraries for a group, your app requests the **drives** relationship on the Group.


<!-- {"blockType": "ignored" } -->

```http
GET /groups/{groupId}/drives
```

### List a site's drives

To list the document libraries for a site, your app requests the **drives** relationship on the Site.

<!-- {"blockType": "ignored" } -->

```http
GET /sites/{siteId}/drives
```

### List a user's drives

<!-- {"blockType": "ignored" } -->

```http
GET /users/{userId}/drives
```

### List the current user's drives

<!-- {"blockType": "ignored" } -->

```http
GET /me/drives
```

## Optional query parameters

This method supports the `$expand`, `$select`, `$skipToken`, `$top`, and `$orderby` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and collection of [Drive](../resources/drive.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {"blockType": "request", "name": "enum-drives" } -->

```msgraph-interactive
GET /me/drives
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/enum-drives-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/enum-drives-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/enum-drives-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/enum-drives-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/enum-drives-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/enum-drives-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/enum-drives-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/enum-drives-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- { "blockType": "response",
       "@odata.type": "Collection(microsoft.graph.drive)",
       "truncated": true } -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#drives",
    "value": [
        {
            "createdDateTime": "2017-07-27T02:41:36Z",
            "description": "",
            "id": "b!-RIj2DuyvEyV1T4NlOaMHk8XkS_I8MdFlUCq1BlcjgmhRfAj3-Z8RY2VpuvV_tpd",
            "lastModifiedDateTime": "2018-03-27T07:34:38Z",
            "name": "OneDrive",
            "webUrl": "https://m365x214355-my.sharepoint.com/personal/meganb_m365x214355_onmicrosoft_com/Documents",
            "driveType": "business",
            "createdBy": {
                "user": {
                    "displayName": "System Account"
                }
            },
            "lastModifiedBy": {
                "user": {
                    "email": "MeganB@contoso.com",
                    "id": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "displayName": "Megan Bowen"
                }
            },
            "owner": {
                "user": {
                    "email": "MeganB@contoso.com",
                    "id": "48d31887-5fad-4d73-a9f5-3c356e68a038",
                    "displayName": "Megan Bowen"
                }
            },
            "quota": {
                "deleted": 0,
                "remaining": 1099217021300,
                "state": "normal",
                "total": 1099511627776,
                "used": 294606476
            }
        }
    ]
}
```

## Remarks

Most users will only have a single Drive resource.

Groups and Sites may have multiple Drive resources available.

Drives with the [system][] facet are hidden by default.
To list them, include `system` in your `$select` statement.

[system]: ../resources/systemfacet.md

<!-- {
  "type": "#page.annotation",
  "description": "List the available drives for a user, group, or site.",
  "keywords": "drive,onedrive.drive,list drives",
  "section": "documentation",
  "tocPath": "Drives/List drives",
  "suppressions": [
  ]
} -->
