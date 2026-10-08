---
title: "List customEmojis"
description: "Get a list of custom emojis available in the teamwork messaging of the organization."
author: "mea"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/10/2026
---

# List customEmojis

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [custom emojis](../resources/teamworkcustomemoji.md) available in the teamwork messaging of the organization.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworkcustomemoji_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworkmessaging-list-customemojis-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /teamwork/messaging/customEmojis
```

## Optional query parameters

This method supports the `$top` and `$filter` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header | Value |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamworkcustomemoji"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork/messaging/customEmojis
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamworkcustomemoji-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamworkcustomemoji-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamworkcustomemoji-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamworkcustomemoji-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamworkcustomemoji-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-teamworkcustomemoji-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-teamworkcustomemoji-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkCustomEmoji)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teamwork/messaging/customEmojis",
    "value": [
        {
            "displayName": "thumbsup_custom",
            "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAA...",
            "createdDateTime": "2026-03-15T10:30:00Z",
            "createdBy": {
                "user": {
                    "id": "670374fa-3b0e-4a3b-9d33-0e1bc5ff1956",
                    "displayName": "Adele Vance"
                }
            }
        },
        {
            "displayName": "party_parrot",
            "contentBytes": "R0lGODlhAQABAIAAAAAAAP...",
            "createdDateTime": "2026-04-20T14:15:00Z",
            "createdBy": {
                "user": {
                    "id": "28c10244-4bad-4fda-993c-f332faef94f0",
                    "displayName": "Alex Wilber"
                }
            }
        }
    ]
}
```

## Related content

- [Create teamworkCustomEmoji](../api/teamworkmessaging-post-customemojis.md)
