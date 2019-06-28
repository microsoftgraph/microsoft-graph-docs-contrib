---
title: "Update activityStatistics"
description: "Updates the properties for activityStatistics object."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "apiPageType"
---

# Update myactivitystatistics

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Updates the properties of activityStatistics object.

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
PATCH /activitystatistics/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|activity|string| Possible values are: `Email`, `Meeting`, `Focus`, `Chat`, `Call`.|
|duration|Duration||
|endDate|Date||
|startDate|Date||
|timeZoneUsed|String||

## Response

If successful, this method returns a `200 OK` response code and an updated [activityStatistics](../resources/activitystatistics.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_activitystatistics"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/analytics/activitystatistics/{id}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.activityStatistics"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "activity": "activity-value",
  "startDate": "datetime-value",
  "endDate": "datetime-value",
  "timeZoneUsed": "timeZoneUsed-value",
  "duration": "datetime-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update activitystatistics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->