---
title: "Update teamworkSection"
description: "Update the properties of a section in a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# Update teamworkSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [section](../resources/teamworksection.md) in a user's [teamwork](../resources/userteamwork.md). For system-defined sections, only the **sortType** property can be updated.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksection_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksection-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /users/{user-id}/teamwork/sections/{teamworkSection-id}
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type | application/json. Required. |
| If-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). Required for optimistic concurrency control. |

## Request body

In the request body, supply a JSON representation of only the properties to update. The following properties can be updated.

| Property | Type | Description |
|:---------|:-----|:------------|
| displayIcon | [sectionDisplayIcon](../resources/sectiondisplayicon.md) | The icon displayed for the section. |
| displayName | String | The display name of the section. Maximum length is 50 characters. Display names are case-sensitive and must be unique within a user's sections. The reserved system-defined names (`RecentChats`, `QuickViews`, `TeamsAndChannels`, `MutedChats`, `MeetingChats`, `EngageCommunities`) can't be used. |
| isExpanded | Boolean | Indicates whether the section is expanded in the user interface. |
| sortType | sectionSortType | The sort order of items in the section. The possible values are: `mostRecent`, `unreadThenMostRecent`, `nameAlphabetical`, `userDefinedCustomOrder`, `unknownFutureValue`. |

> [!IMPORTANT]
> The valid **sortType** values depend on the section type:
> - *User-defined sections*: `mostRecent`, `unreadThenMostRecent`, and `userDefinedCustomOrder` are valid. `nameAlphabetical` isn't supported.
> - *System-defined sections*: The valid values depend on the specific section. For example, the *Teams* and *Channels* sections support `nameAlphabetical`, but the *RecentChats* and *MutedChats* sections don't. When the property **isHierarchicalViewEnabled** is set to `true`, only `nameAlphabetical` is valid.


## Response

If successful, this method returns a `200 OK` response code and an updated [teamworkSection](../resources/teamworksection.md) object in the response body.

> [!NOTE]
> The response includes an updated **@odata.etag** value. Use this value as the `If-Match` header for any subsequent mutation operations.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `400 Bad Request` | At least one property must be provided for update. |
| `400 Bad Request` | The 'displayName' property must not be empty or whitespace, or must not exceed 50 characters. |
| `400 Bad Request` | The property '{propertyName}' is read-only or not updatable. Only **displayName**, **displayIcon**, **isExpanded**, and **sortType** can be updated. |
| `400 Bad Request` | The specified sort type is not valid for this section. For more information, see the [Request body](#request-body) section. |
| `403 Forbidden` | This section is system-generated and cannot be modified. Only the **sortType** property can be updated on system-defined sections. |
| `404 Not Found` | The specified section was not found. |
| `409 Conflict` | A section with this display name already exists. Returned when the requested **displayName** matches an existing user-defined section or a reserved system-defined section name. The comparison is case-sensitive. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](userteamwork-list-sections.md) again to retrieve the current **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Example 1: Update the display name of a section
The following example shows how to update the display name of a **teamworkSection** object.
#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_teamworksection_displayname",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```http
PATCH https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890
Content-type: application/json
If-Match: "1742515200"

{
  "displayName": "Important Conversations"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-teamworksection-displayname-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-teamworksection-displayname-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-teamworksection-displayname-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-teamworksection-displayname-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-teamworksection-displayname-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-teamworksection-displayname-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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

{
  "@odata.type": "#microsoft.graph.teamworkSection",
  "@odata.etag": "\"1742515210\"",
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "displayName": "Important Conversations",
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
  "lastModifiedDateTime": "2026-03-08T09:15:00Z"
}
```

### Example 2: Update the sort order of a section
The following example shows how to update the sort order of a **teamworkSection** object.
#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_teamworksection_sorttype",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```http
PATCH https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890
Content-type: application/json
If-Match: "1742515210"

{
  "sortType": "unreadThenMostRecent"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-teamworksection-sorttype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-teamworksection-sorttype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-teamworksection-sorttype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-teamworksection-sorttype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-teamworksection-sorttype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-teamworksection-sorttype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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

{
  "@odata.type": "#microsoft.graph.teamworkSection",
  "@odata.etag": "\"1742515220\"",
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "displayName": "Important Conversations",
  "displayIcon": {
    "iconType": "⭐",
    "displayName": "Star",
    "contentUrl": null,
    "skinTone": null
  },
  "sectionType": "userDefined",
  "sortType": "unreadThenMostRecent",
  "isExpanded": true,
  "isHierarchicalViewEnabled": false,
  "createdDateTime": "2025-01-15T10:30:00Z",
  "lastModifiedDateTime": "2026-03-08T09:20:00Z"
}
```

<!-- uuid: e5f6a7b8-9012-3456-789a-bcdef0123456
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Update teamworkSection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
