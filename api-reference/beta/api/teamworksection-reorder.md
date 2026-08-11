---
title: "teamworkSection: reorder"
description: "Reorder the sections in a user's teamwork."
author: "jasmeet9323"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/06/2026
---

# teamworkSection: reorder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reorder the sections in a user's teamwork. The **sectionsOrder** collection must contain every section ID returned by [List sections](../api/userteamwork-list-sections.md), exactly once. If the collection contains the *QuickViews* system section, that section must be first.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksection-reorder-permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksection-reorder-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /me/teamwork/sections/reorder
POST /users/{user-id}/teamwork/sections/reorder
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
| sectionsOrder | String collection | The complete ordered list of section IDs. Include every section ID returned by [List sections](../api/userteamwork-list-sections.md), exactly once. If the *QuickViews* system section is included, it must be the first ID. Required. |

## Response

If successful, this action returns a `200 OK` response code and a [teamworkSection](../resources/teamworksection.md) collection in the response body, in the requested order.

> [!NOTE]
> Each returned section includes an updated **@odata.etag** value. Use this value as the `If-Match` header for any subsequent mutation operation.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `400 Bad Request` | The **sectionsOrder** property is missing, empty, exceeds the supported maximum, or contains null, empty, or duplicate IDs. |
| `400 Bad Request` | The reorder list doesn't contain every current section exactly once, contains an unknown section ID, or doesn't place the *QuickViews* system section first. |
| `404 Not Found` | The specified user wasn't found. |
| `409 Conflict` | A section in the reorder list was deleted concurrently with the reorder request. [List sections](../api/userteamwork-list-sections.md) again and retry with the current section IDs and version. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](../api/userteamwork-list-sections.md) again to retrieve the latest **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Request

The following example reorders three sections for a user.

<!-- {
  "blockType": "request",
  "name": "teamworksection_reorder",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f"]
}-->
```http
POST https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/reorder
Content-Type: application/json
If-Match: "1742515200"

{
  "sectionsOrder": [
    "ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews",
    "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    "b2c3d4e5-f6a7-8901-bcde-f12345678901"
  ]
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkSection)"
}-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515210\"",
      "id": "ce274158-f4f5-4ba7-bd18-0b2204dc1691~10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f~QuickViews",
      "displayName": "QuickViews",
      "sectionType": "systemDefined",
      "sortType": "nameAlphabetical"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515210\"",
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "displayName": "Project Alpha",
      "sectionType": "userDefined",
      "sortType": "userDefinedCustomOrder"
    },
    {
      "@odata.type": "#microsoft.graph.teamworkSection",
      "@odata.etag": "\"1742515210\"",
      "id": "b2c3d4e5-f6a7-8901-bcde-f12345678901",
      "displayName": "Customer Escalations",
      "sectionType": "userDefined",
      "sortType": "mostRecent"
    }
  ]
}
```

<!-- uuid: f6756f64-f79f-44bc-ae56-e6d088cbe31f
2026-08-06 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamworkSection: reorder",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
