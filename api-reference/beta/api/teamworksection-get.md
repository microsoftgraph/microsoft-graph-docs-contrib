---
title: "Get teamworkSection"
description: "Read the properties of a section in a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# Get teamworkSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of a [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksection_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksection-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/teamwork/sections/{teamworkSection-id}
```

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| If-None-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). If the section hierarchy didn't change, this header returns a `304 Not Modified` response code. Optional. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkSection](../resources/teamworksection.md) object in the response body. If the `If-None-Match` header is provided and the resource didn't change, this method returns a `304 Not Modified` response.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_teamworksection",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkSection"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json
ETag: "1742515200"

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
}
```

<!-- uuid: d4e5f6a7-b890-1234-5678-9abcdef01234
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get teamworkSection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
