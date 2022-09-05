---
title: Get position information of a WebPart
description: Get position information of a WebPart
ms.localizationpriority: medium
author: sangle7
ms.prod: sharepoint
doc_type: "apiPageType"
---

# Update webAccount

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [position](../resources/position.md) information of a [WebPart](../resources/webpart.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                    | Permissions (from least to most privileged) |
| :--------------------------------- | :------------------------------------------ |
| Delegated (work or school account) | Sites.Read.All                              |
| Application                        | Sites.Read.All                              |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{site-id}/pages/{page-id}/webparts/{webpart-id}/getPositionOfWebPart
```

## HTTP Response

200 Ok. The API will also return the properties of the position resource.

## Example

#### Request

<!-- { "blockType": "ignored" }-->

```http
GET /sites/{site-id}/pages/{page-id}/webparts/{webpart-id}/getPositionOfWebPart
```

#### Response

<!-- { "blockType": "response", "@odata.type": "microsoft.graph.media.webPartPosition", "truncated": true } -->

```json
HTTP/1.1 200 OK
Content-type: application/json

{
  "columnId": 1,
  "horizontalSectionId": 1,
  "isInVerticalSection": false,
  "webpartIndex": 1
}

```