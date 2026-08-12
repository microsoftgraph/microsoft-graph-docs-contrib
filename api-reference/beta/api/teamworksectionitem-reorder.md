---
title: "teamworkSectionItem: reorder"
description: "Reorder the items in a user-defined section in a user's teamwork."
author: "jasmeet9323"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/06/2026
---

# teamworkSectionItem: reorder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reorder the items in a user-defined section in a user's teamwork. The section must have **sortType** set to `userDefinedCustomOrder`, and the **itemsOrder** collection must contain every item ID returned by [List items](../api/teamworksection-list-items.md), exactly once.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksectionitem-reorder-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksectionitem-reorder-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /me/teamwork/sections/{teamworkSection-id}/items/reorder
POST /users/{user-id}/teamwork/sections/{teamworkSection-id}/items/reorder
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | ****** Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |
| If-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](../api/userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). Required for optimistic concurrency control. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameter that is required when you call this action.

| Parameter | Type | Description |
|:----------|:-----|:------------|
| itemsOrder | String collection | The complete ordered list of item IDs in the section. Include every ID returned by [List items](../api/teamworksection-list-items.md), exactly once. Required. |

## Response

If successful, this action returns a `200 OK` response code and a [teamworkSectionItem](../resources/teamworksectionitem.md) collection in the response body, in the requested order.

> [!NOTE]
> Each returned item includes an updated **@odata.etag** value. Use this value as the `If-Match` header for any subsequent mutation operation.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `400 Bad Request` | The **itemsOrder** property is missing, empty, exceeds the supported maximum, or contains null, empty, or duplicate IDs. |
| `400 Bad Request` | The reorder list doesn't contain every item in the section exactly once, or it contains an item ID that isn't in the section. |
| `403 Forbidden` | This section is system-generated and can't be modified. Reorder items only in user-defined sections. |
| `404 Not Found` | The specified section wasn't found. |
| `409 Conflict` | Reordering is only supported when the section **sortType** is `userDefinedCustomOrder`. [Update the section](../api/teamworksection-update.md) to use this sort type, then retry. |
| `409 Conflict` | The target section was deleted concurrently with the reorder request. [List sections](../api/userteamwork-list-sections.md) again and retry with a current section ID and version. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](../api/userteamwork-list-sections.md) again to retrieve the latest **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Request

The following example reorders three items in the "Project Alpha" section.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "teamworksectionitem_reorder",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```http
POST https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890/items/reorder
Content-Type: application/json
If-Match: "1742515200"

{
  "itemsOrder": [
    "19:meeting_MTUxMjg0OGItZTY3MC00NTkyLTg1NzMtZTVkZTcyZDU5ZGVi@thread.v2",
    "19:978e3806-38a4-4104-a07f-57abfa8cdf9a_bdf9c93b-12ea-4e8f-8383-d0ca66d5ff48@unq.gbl.spaces",
    "19:94961b6eacc04e2392e34709c66cb610@thread.v2"
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/teamworksectionitem-reorder-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkSectionItem)"
}-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkSectionItem",
      "@odata.etag": "\"1742515210\"",
      "id": "19:meeting_MTUxMjg0OGItZTY3MC00NTkyLTg1NzMtZTVkZTcyZDU5ZGVi@thread.v2",
      "itemType": "meeting",
      "lastModifiedDateTime": "2026-08-06T14:40:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSectionItem",
      "@odata.etag": "\"1742515210\"",
      "id": "19:978e3806-38a4-4104-a07f-57abfa8cdf9a_bdf9c93b-12ea-4e8f-8383-d0ca66d5ff48@unq.gbl.spaces",
      "itemType": "channel",
      "lastModifiedDateTime": "2026-08-06T14:40:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSectionItem",
      "@odata.etag": "\"1742515210\"",
      "id": "19:94961b6eacc04e2392e34709c66cb610@thread.v2",
      "itemType": "chat",
      "lastModifiedDateTime": "2026-08-06T14:40:00Z"
    }
  ]
}
```

<!-- uuid: 3608f7db-fdd5-4f19-9007-bb90b0bcaa40
2026-08-06 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamworkSectionItem: reorder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
