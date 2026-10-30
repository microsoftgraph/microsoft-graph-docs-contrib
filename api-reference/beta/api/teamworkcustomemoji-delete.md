---
title: "Delete teamworkCustomEmoji"
description: "Delete a custom emoji by display name from the teamwork messaging of the organization."
author: "mehakagarwal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 09/28/2026
---

# Delete teamworkCustomEmoji

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [custom emoji](../resources/teamworkcustomemoji.md) by display name from the teamwork messaging of the organization.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamworkcustomemoji-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamworkcustomemoji-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /teamwork/messaging/customEmojis/{displayName}
```

## Path parameters

| Parameter | Type | Description |
|:---|:---|:---|
| displayName | String | The unique display name of the custom emoji. |

## Request headers

| Header | Value |
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "delete_teamworkcustomemoji",
  "sampleKeys": ["low-battery"]
}-->

```msgraph-interactive
DELETE https://graph.microsoft.com/beta/teamwork/messaging/customEmojis/low-battery
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

## Related content

- [List customEmojis](../api/teamworkmessaging-list-customemojis.md)
- [Create teamworkCustomEmoji](../api/teamworkmessaging-post-customemojis.md)
- [Get teamworkCustomEmoji](../api/teamworkcustomemoji-get.md)
- [teamworkCustomEmoji resource type](../resources/teamworkcustomemoji.md)
