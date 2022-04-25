---
title: "Get addLargeGalleryViewOperation"
description: "Get the status of an operation that adds the large gallery view to a call."
author: "navali-msft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get addLargeGalleryViewOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of an [operation](../resources/addlargegalleryviewoperation.md) that adds the large gallery view to a call.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged)                  |
| :-------------- | :----------------------------------------------------------- |
| Delegated (work or school account)     | Not supported.                        |
| Delegated (personal Microsoft account) | Not supported.                        |
| Application                            | None.                                 |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /app/calls/{callId}/operations/{id}
GET /communications/calls/{callId}/operations/{id}
```

> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [addLargeGalleryViewOperation](../resources/addlargegalleryviewoperation.md) object in the response body.

## Example

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get-addLargeGalleryViewOperation-1"
}-->

```http
GET https://graph.microsoft.com/beta/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/e33176d4-836a-4fd7-b95a-d11bda52811d
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get-addLargeGalleryViewOperation-1",
  "truncated": true,
  "@odata.type": "microsoft.graph.addLargeGalleryViewOperation"
} -->
```http
HTTP/1.1 200 OK

{
  "@odata.type": "#microsoft.graph.addLargeGalleryViewOperation",
  "clientContext": "785f4929-92ca-497b-863f-c778c77c9758",
  "id": "e33176d4-836a-4fd7-b95a-d11bda52811d",
  "resultInfo": null,
  "status": "completed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get the status of addLargeGalleryView operation.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


