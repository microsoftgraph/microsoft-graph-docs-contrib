---
title: "Add teamworkSectionItem"
description: "Add an item, such as a chat, channel, meeting, or community, to a user-defined section in a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# Add teamworkSectionItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add an [item](../resources/teamworksectionitem.md), such as a chat, channel, meeting, or community, to a user-defined [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). Each item can belong to only one section at a time. You can only add items that are currently in a system-defined section. If the item is already in another user-defined section, use the [move](teamworksectionitem-move.md) action to relocate it.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksection_post_items" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksection-post-items-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id}/teamwork/sections/{teamworkSection-id}/items
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |
| If-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). Required for optimistic concurrency control. |

## Request body

In the request body, supply a JSON representation of a [teamworkSectionItem](../resources/teamworksectionitem.md) object.

The following table lists the properties that you can set when you add a **teamworkSectionItem**.

| Property | Type | Description |
|:---------|:-----|:------------|
| id | String | The conversation ID of the chat, channel, meeting, or community to add to the section. For community items, the service automatically normalizes the ID to the `19:{id}@EngageCommunity` format. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [teamworkSectionItem](../resources/teamworksectionitem.md) object in the response body.

> [!NOTE]
> The response includes an updated **@odata.etag** value. Use this value as the `If-Match` header for any subsequent mutation operations.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `400 Bad Request` | The 'id' property is required and must not be empty. |
| `400 Bad Request` | The specified item ID is not valid. Provide a valid chat, channel, meeting, or community ID. |
| `400 Bad Request` | The maximum number of items in this section has been reached. |
| `403 Forbidden` | Access to this resource is denied. The caller must be a member of the conversation being added. |
| `404 Not Found` | The specified section was not found. |
| `409 Conflict` | This item is already in this section. |
| `409 Conflict` | This item is already associated with another section. Use the [move](teamworksectionitem-move.md) API to relocate it. The response includes a `conflictingSectionId` detail with the ID of the section that currently holds the item. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](userteamwork-list-sections.md) again to retrieve the current **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Request

The following example shows a request to add a chat to a section.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add_teamworksectionitem",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```http
POST https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890/items
Content-type: application/json
If-Match: "1742515200"

{
  "id": "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/add-teamworksectionitem-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/add-teamworksectionitem-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-teamworksectionitem-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-teamworksectionitem-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/add-teamworksectionitem-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/add-teamworksectionitem-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkSectionItem"
}-->
```http
HTTP/1.1 201 Created
Content-type: application/json
Location: https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890/items/19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2

{
  "@odata.type": "#microsoft.graph.teamworkSectionItem",
  "@odata.etag": "\"1742515210\"",
  "id": "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2",
  "itemType": "chat",
  "createdDateTime": "2026-03-08T10:00:00Z",
  "lastModifiedDateTime": null
}
```

<!-- uuid: e6f7a8b9-0123-4567-cdef-567890123456
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add teamworkSectionItem",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
