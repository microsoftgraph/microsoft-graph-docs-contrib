---
title: "Create teamworkSection"
description: "Create a new section in a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# Create teamworkSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_post_sections" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-post-sections-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /users/{user-id}/teamwork/sections
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |
| If-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). Required for optimistic concurrency control. |

## Request body

In the request body, supply a JSON representation of a [teamworkSection](../resources/teamworksection.md) object.

The following table lists the properties that you can set when you create a **teamworkSection**.

| Property | Type | Description |
|:---------|:-----|:------------|
| displayIcon | [sectionDisplayIcon](../resources/sectiondisplayicon.md) | The icon displayed for the section. Optional. The **skinTone** property of the icon can't be set and is derived from user settings. |
| displayName | String | The display name of the section. Required. Maximum length is 50 characters. Display names are case-sensitive and must be unique within a user's sections. The following names are reserved for system-defined sections and can't be used: `RecentChats`, `QuickViews`, `TeamsAndChannels`, `MutedChats`, `MeetingChats`, `EngageCommunities`. |
| isExpanded | Boolean | Indicates whether the section is expanded in the user interface. Optional. The default value is `true`. |
| sortType | sectionSortType | The sort order of items in the section. Optional. The default value is `userDefinedCustomOrder`. The valid values for user-defined sections are: `mostRecent`, `unreadThenMostRecent`, `userDefinedCustomOrder`, `unknownFutureValue`. The `nameAlphabetical` member isn't valid for user-defined sections. |

## Response

If successful, this method returns a `201 Created` response code and a [teamworkSection](../resources/teamworksection.md) object in the response body.

> [!NOTE]
> The response includes an updated **@odata.etag** value. Use this value as the `If-Match` header for any subsequent mutation operations.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `400 Bad Request` | The 'displayName' property is required and must not be empty. |
| `400 Bad Request` | The 'displayName' property must not exceed 50 characters. |
| `400 Bad Request` | The section display name contains invalid characters or format. |
| `400 Bad Request` | The 'id', 'createdDateTime', 'lastModifiedDateTime', 'sectionType', or 'isHierarchicalViewEnabled' property is read-only and must not be provided when creating a section. |
| `400 Bad Request` | The 'displayIcon.contentUrl' property is not supported, or the 'displayIcon.displayName' or 'displayIcon.skinTone' property is read-only and must not be provided. |
| `400 Bad Request` | The maximum number of sections has been reached. |
| `409 Conflict` | A section with this display name already exists. Returned when the requested **displayName** matches an existing user-defined section or one of the reserved system-defined section names (`RecentChats`, `QuickViews`, `TeamsAndChannels`, `MutedChats`, `MeetingChats`, `EngageCommunities`). The comparison is case-sensitive. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](userteamwork-list-sections.md) again to retrieve the current **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_teamworksection",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f"]
}-->
```http
POST https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections
Content-type: application/json
If-Match: "1742515200"

{
  "displayName": "Project Alpha",
  "displayIcon": {
    "iconType": "🚀"
  },
  "sortType": "mostRecent"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-teamworksection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-teamworksection-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-teamworksection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-teamworksection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-teamworksection-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-teamworksection-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkSection"
}-->
```http
HTTP/1.1 201 Created
Content-type: application/json
Location: https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/c3d4e5f6-a7b8-9012-cdef-123456789012

{
  "@odata.type": "#microsoft.graph.teamworkSection",
  "@odata.etag": "\"1742515210\"",
  "id": "c3d4e5f6-a7b8-9012-cdef-123456789012",
  "displayName": "Project Alpha",
  "displayIcon": {
    "iconType": "🚀",
    "displayName": "Rocket",
    "contentUrl": null,
    "skinTone": null
  },
  "sectionType": "userDefined",
  "sortType": "mostRecent",
  "isExpanded": true,
  "isHierarchicalViewEnabled": false,
  "createdDateTime": "2026-03-08T10:00:00Z",
  "lastModifiedDateTime": "2026-03-08T10:00:00Z"
}
```

<!-- uuid: a7b89012-3456-789a-bcde-f01234567890
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create teamworkSection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
