---
title: "Create customEmoji"
description: "Create a new [custom emoji](../resources/teamworkcustomemoji.md) in the teamwork messaging of the organization, which adds the custom emoji to Teams for the tenant."
author: "mea"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/10/2026
---

# Create customEmoji

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [custom emoji](../resources/teamworkcustomemoji.md) in the teamwork messaging of the organization, which adds the custom emoji to Teams for the tenant. The emoji image is provided as base64-encoded content bytes.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworkmessaging_post_customemojis" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworkmessaging-post-customemojis-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /teamwork/messaging/customEmojis
```

## Request headers

| Header        | Value |
|:--------------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) object.

The following table lists the properties that are required when you create a custom emoji.

| Property     | Type   | Description |
|:-------------|:-------|:------------|
| contentBytes | String | The base64-encoded image content for the emoji. Supported formats include PNG and GIF. |
| displayName  | String | The unique display name of the custom emoji. Key. Must be unique and must not conflict with existing emoji names. |

## Response

If successful, this method returns a `201 Created` response code and a [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) object in the response body.

## Examples

### Request

The following example shows a request to upload a custom emoji.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_teamworkcustomemoji"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teamwork/messaging/customEmojis
Content-Type: application/json

{
    "displayName": "thumbsup_custom",
    "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAOxAAADsQBlSsOGwAABGhJREFU..."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-teamworkcustomemoji-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-teamworkcustomemoji-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-teamworkcustomemoji-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-teamworkcustomemoji-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-teamworkcustomemoji-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-teamworkcustomemoji-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkCustomEmoji"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teamwork/messaging/customEmojis/$entity",
    "displayName": "thumbsup_custom",
    "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAAOxAAADsQBlSsOGwAABGhJREFU...",
    "createdDateTime": "2026-06-10T12:00:00Z",
    "createdBy": {
        "user": {
            "id": "670374fa-3b0e-4a3b-9d33-0e1bc5ff1956",
            "displayName": "Adele Vance"
        }
    }
}
```

## Related content

- [List customEmojis](../api/teamworkmessaging-list-customemojis.md)
