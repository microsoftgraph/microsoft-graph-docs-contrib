---
title: "List sections"
description: "Get the list of sections in a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# List sections

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [sections](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_list_sections" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-list-sections-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/teamwork/sections
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. Only the **items** relationship can be expanded, and only one level of expansion is supported. For more information, see [OData query parameters](/graph/query-parameters).

When `$expand=items` is specified, the response includes the **items** collection inline on each section:

- For [user-defined sections](../resources/teamworksection.md#sectiontype-values), the **items** collection contains the chats, channels, meetings, and communities organized within the section.
- For [system-defined sections](../resources/teamworksection.md#system-defined-sections), the **items** collection is always returned as an empty array (`[]`). System-defined section contents aren't exposed through the public Graph API. To enumerate items in a user-defined section without using `$expand`, use [List items](teamworksection-list-items.md).

When `$expand=items` is specified, the response doesn't include the **@microsoft.graph.sectionsOrder** and **@microsoft.graph.sectionsVersion** instance annotations. To obtain both the items and these annotations, issue a separate request to [List sections](userteamwork-list-sections.md) without `$expand`.

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkSection](../resources/teamworksection.md) objects in the response body.

The response includes the following OData instance annotations on the collection.

| Annotation | Type | Description |
|:-----------|:-----|:------------|
| @microsoft.graph.sectionsOrder | String collection | An ordered array of section IDs that represent the user's preferred section order. |
| @microsoft.graph.sectionsVersion | String | The current section hierarchy version. Use this value as the `If-Match` header for optimistic concurrency control on mutation operations (create, update, or delete sections, and add, remove, or move items). |

## Examples

### Example 1: List sections

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamworksections",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamworksections-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamworksections-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamworksections-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamworksections-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamworksections-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-teamworksections-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkSection)"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@microsoft.graph.sectionsOrder": [
    "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    "b2c3d4e5-f6a7-8901-bcde-f12345678901"
  ],
  "@microsoft.graph.sectionsVersion": "1742515200",
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515200\"",
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "displayName": "Favorites",
      "displayIcon": {
        "iconType": "⭐",
        "displayName": "Star",
        "contentUrl": null,
        "skinTone": null
      },
      "sectionType": "userDefined",
      "sortType": "mostRecent",
      "isExpanded": true,
      "isHierarchicalViewEnabled": false,
      "createdDateTime": "2025-01-15T10:30:00Z",
      "lastModifiedDateTime": "2025-03-01T14:22:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515200\"",
      "id": "b2c3d4e5-f6a7-8901-bcde-f12345678901",
      "displayName": "Teams and Channels",
      "displayIcon": null,
      "sectionType": "systemDefined",
      "sortType": "unreadThenMostRecent",
      "isExpanded": true,
      "isHierarchicalViewEnabled": true,
      "createdDateTime": "2024-06-10T08:00:00Z",
      "lastModifiedDateTime": "2025-02-28T16:45:00Z"
    }
  ]
}
```

### Example 2: List sections with items expanded

The following example uses `$expand=items` to return each section together with its items collection in a single request. The user-defined section returns its items inline, while the system-defined section returns an empty **items** array because system-defined section contents aren't exposed through the public Graph API.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_teamworksections_expand_items",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections?$expand=items
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-teamworksections-expand-items-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-teamworksections-expand-items-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-teamworksections-expand-items-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-teamworksections-expand-items-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-teamworksections-expand-items-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-teamworksections-expand-items-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkSection)"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515200\"",
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "displayName": "Favorites",
      "sectionType": "userDefined",
      "sortType": "mostRecent",
      "isExpanded": true,
      "isHierarchicalViewEnabled": false,
      "createdDateTime": "2025-01-15T10:30:00Z",
      "lastModifiedDateTime": "2025-03-01T14:22:00Z",
      "items": [
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
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515200\"",
      "id": "b2c3d4e5-f6a7-8901-bcde-f12345678901",
      "displayName": "TeamsAndChannels",
      "sectionType": "systemDefined",
      "sortType": "nameAlphabetical",
      "isExpanded": true,
      "isHierarchicalViewEnabled": true,
      "createdDateTime": "2024-06-10T08:00:00Z",
      "lastModifiedDateTime": "2025-02-28T16:45:00Z",
      "items": []
    }
  ]
}
```

<!-- uuid: c3d4e5f6-a7b8-9012-cdef-123456789012
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List teamworkSections",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
