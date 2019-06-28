---
title: "Get chatActivityStatistics"
description: "Retrieve the properties and relationships of chatActivityStatistics object."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "apiPageType"
---

# Get chatActivityStatistics

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of chatActivityStatistics object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /chatactivitystatistics/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [chatActivityStatistics](../resources/chatactivitystatistics.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_chatactivitystatistics"
}-->

```http
GET https://graph.microsoft.com/beta/me/analytics/chatactivitystatistics
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatActivityStatistics"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.type": "#microsoft.graph.chatActivityStatistics",
  "activity": "Chat",
  "startDate": "2019-06-16",
  "endDate": "2019-06-17",
  "id": "chat_2019-06-16_2019-06-17",
  "timeZoneUsed": "Pacific Standard Time",
  "duration": "PT0S",
  "afterHours": "PT0S"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get chatActivityStatistics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->