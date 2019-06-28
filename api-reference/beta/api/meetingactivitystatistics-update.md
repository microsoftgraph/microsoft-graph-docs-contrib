---
title: "Update meetingActivityStatistics"
description: "Updates the properties of the meetingActivityStatistics object."
localization_priority: Normal
author: "madehmer"
ms.prod: "insights"
doc_type: "apiPageType"
---

# Update meetingActivityStatistics

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of the meetingActivityStatistics object.

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
PATCH /meetingactivitystatistics/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|afterHours|Duration|Time spent on meetings outside of working hours.|
|conflicting|Duration|Time spent in conflicting meetings (meetings that overlap with other meetings that the person accepted and where the person’s status is set to Busy).|
|long|Duration|Time spent in long meetings (more than an hour in duration).|
|multitasking|Duration|Time spent in meetings where the person was multitasking (read more than a minimum number of emails and/or sent more than a minimum number of messages in Teams or in Skype for Business  ).|
|organized|Duration|Time spent in meetings organized by the person.|
|recurring|Duration|Time spent on recurring meetings.|

## Response

If successful, this method returns a `200 OK` response code and an updated [meetingActivityStatistics](../resources/meetingactivitystatistics.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_meetingactivitystatistics"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/analytics/meetingactivitystatistics/{id}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingActivityStatistics"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "afterHours": "datetime-value",
  "organized": "datetime-value",
  "recurring": "datetime-value",
  "long": "datetime-value",
  "conflicting": "datetime-value",
  "multitasking": "datetime-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update meetingactivitystatistics",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->