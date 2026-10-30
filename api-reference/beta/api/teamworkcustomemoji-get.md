---
title: "Get teamworkCustomEmoji"
description: "Get a single custom emoji or the raw image content of a custom emoji by display name from the teamwork messaging of the organization."
author: "mehakagarwal"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 09/28/2026
---

# Get teamworkCustomEmoji

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a single [custom emoji](../resources/teamworkcustomemoji.md) or the raw image content of a custom emoji by display name from the teamwork messaging of the organization.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamworkcustomemoji-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamworkcustomemoji-get-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /teamwork/messaging/customEmojis/{displayName}
GET /teamwork/messaging/customEmojis/{displayName}/$value
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

If successful, this method returns a `200 OK` response code and a [teamworkCustomEmoji](../resources/teamworkcustomemoji.md) object or the binary content of the custom emoji in the response body.

## Examples

### Example 1: Get a custom emoji

The following example shows how to get a custom emoji by display name.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_teamworkcustomemoji",
  "sampleKeys": ["low-battery"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork/messaging/customEmojis/low-battery
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkCustomEmoji"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teamwork/messaging/customEmojis/$entity",
    "id": "01ZPGUWVOZAD7SNI6IYPC3QOQWMDMZQO6U",
    "displayName": "low-battery",
    "contentBytes": "iVBORw0KGgoAAAANSUhEUgAAA...",
    "contentType": "image/png",
    "createdDateTime": "2024-12-11T20:25:18.4809Z",
    "createdBy": {
        "user": {
            "id": "670374fa-3b0e-4a3b-9d33-0e1bc5ff1956",
            "displayName": "Adele Vance"
        }
    }
}
```

### Example 2: Get the raw image content of a custom emoji

The following example shows how to get the raw image content of a custom emoji by display name.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_teamworkcustomemoji_content",
  "sampleKeys": ["low-battery"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork/messaging/customEmojis/low-battery/$value
```

#### Response

The following example shows the response. The `Content-Type` response header specifies the media type.

<!-- {
  "blockType": "response",
  "@odata.type": "Edm.Stream"
} -->
```http
HTTP/1.1 200 OK
Content-Type: image/png

...binary data...
```

## Related content

- [List customEmojis](../api/teamworkmessaging-list-customemojis.md)
- [Create teamworkCustomEmoji](../api/teamworkmessaging-post-customemojis.md)
- [Delete teamworkCustomEmoji](../api/teamworkcustomemoji-delete.md)
- [teamworkCustomEmoji resource type](../resources/teamworkcustomemoji.md)

<!--
{
  "type": "#page.annotation",
  "description": "Get teamworkCustomEmoji",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: get_teamworkcustomemoji/contentBytes:
      Expected type Binary but actual was String. Property: contentBytes, actual value: 'iVBORw0KGgoAAAANSUhEUgAAA...'"
  ]
}
-->
