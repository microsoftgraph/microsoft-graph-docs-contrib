---
title: "teamworkSectionItem: move"
description: "Move an item from one user-defined section to another user-defined section in a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# teamworkSectionItem: move

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Move an [item](../resources/teamworksectionitem.md) from one user-defined [section](../resources/teamworksection.md) to another user-defined section in a user's [teamwork](../resources/userteamwork.md). Each item can belong to only one section at a time. This action removes the item from its current section and adds it to the target section. Use this action instead of [add](teamworksection-post-items.md) when the item is already in a user-defined section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksectionitem_move" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksectionitem-move-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id}/teamwork/sections/{teamworkSection-id}/items/{teamworkSectionItem-id}/move
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |
| If-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). Required for optimistic concurrency control. |

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

| Parameter | Type | Description |
|:----------|:-----|:------------|
| targetSectionId | String | The ID of the section to move the item to. Required. |

## Response

If successful, this action returns a `200 OK` response code and a [teamworkSectionItem](../resources/teamworksectionitem.md) in the response body that represents the item in the target section.

> [!NOTE]
> The response includes an updated **@odata.etag** value. Use this value as the `If-Match` header for any subsequent mutation operations.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `400 Bad Request` | The 'targetSectionId' property is required and must not be empty. |
| `400 Bad Request` | The source and target sections must be different. |
| `403 Forbidden` | This section is system-generated and cannot be modified. Items can't be moved into or out of system-defined sections by using this action. |
| `404 Not Found` | The specified section was not found, or the specified item was not found in this section. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](userteamwork-list-sections.md) again to retrieve the current **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Request

The following example shows a request to move a chat from the "Favorites" section to the "Project Alpha" section.

<!-- {
  "blockType": "request",
  "name": "teamworksectionitem_move",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890", "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2"]
}-->
```http
POST https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890/items/19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2/move
Content-type: application/json
If-Match: "1742515200"

{
  "targetSectionId": "c3d4e5f6-a7b8-9012-cdef-123456789012"
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkSectionItem"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkSectionItem",
  "@odata.etag": "\"1742515210\"",
  "id": "19:d5b2c3a4-e6f7-8901-abcd-ef3456789012@thread.v2",
  "itemType": "chat",
  "createdDateTime": "2026-03-08T10:30:00Z",
  "lastModifiedDateTime": null
}
```

<!-- uuid: a8b90123-4567-89ab-cdef-789012345678
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamworkSectionItem: move",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
