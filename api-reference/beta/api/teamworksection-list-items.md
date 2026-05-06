---
title: "List items"
description: "Get the list of items in a section of a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# List items

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [items](../resources/teamworksectionitem.md) in a [section](../resources/teamworksection.md) of a user's [teamwork](../resources/userteamwork.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksection_list_items" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksection-list-items-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/teamwork/sections/{teamworkSection-id}/items
```

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkSectionItem](../resources/teamworksectionitem.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamworksectionitems",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890/items
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamworksectionitems-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamworksectionitems-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamworksectionitems-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamworksectionitems-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamworksectionitems-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-teamworksectionitems-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkSectionItem)"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkSectionItem",
      "id": "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2",
      "itemType": "chat",
      "createdDateTime": "2025-02-10T09:15:00Z",
      "lastModifiedDateTime": "2025-03-05T11:30:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSectionItem",
      "id": "19:e6f7a8b9-0123-4567-89ab-cdef01234567@thread.tacv2",
      "itemType": "channel",
      "createdDateTime": "2025-01-20T14:00:00Z",
      "lastModifiedDateTime": "2025-03-01T08:45:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSectionItem",
      "id": "19:meeting_ZmY3NTg2ODEtYTFiNi00OTI4LWFmZTctODRhMTI1NjRkNWRm@thread.v2",
      "itemType": "meeting",
      "createdDateTime": "2025-03-01T16:00:00Z",
      "lastModifiedDateTime": "2025-03-01T16:00:00Z"
    }
  ]
}
```

<!-- uuid: c4d5e6f7-a8b9-0123-cdef-345678901234
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List teamworkSectionItems",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
