---
title: "Update emailActivityStatistics"
description: "Updates the properties of the emailActivityStatistics object."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "apiPageType"
---

# Update emailActivityStatistics

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Updates the properties of the emailActivityStatistics object.

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
PATCH /emailactivitystatistics/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|afterHours|Duration|Total hours spent outside of working hours (as defined in Outlook) on an activity.|
|readEmail|Duration|Total hours spent reading email.|
|sentEmail|Duration|Total hours spent writing and sending email.|

## Response

If successful, this method returns a `200 OK` response code and an updated [emailActivityStatistics](../resources/emailactivitystatistics.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_emailactivitystatistics"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/analytics/emailactivitystatistics/{id}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.emailActivityStatistics"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "afterHours": "datetime-value",
  "readEmail": "datetime-value",
  "sentEmail": "datetime-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update emailactivitystatistics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->