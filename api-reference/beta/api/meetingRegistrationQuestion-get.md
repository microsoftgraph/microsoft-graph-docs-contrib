---
title: "Get custom registration question"
description: "Get custom meeting registration question."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get custom registration question

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a custom registration question of a [meetingRegistration](../resources/meetingRegistration.md) by id.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.Read, OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not Supported. |
| Application | Not Supported. |

## HTTP request

To get a custom registration question by id with delegated permission:
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/registration/customQuestions/{id}
```

- `meetingId` is the **id** of an [onlineMeeting](../resources/onlineMeeting.md) object.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [meetingRegistrationQuestion](../resources/meetingRegistrationQuestion.md) object in the response body.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "get-custom-question"
}-->

```http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions/MSMxY2E2ZmE3OS1hOTY3LTQ4ZX3lvdV94MDAyMF9hX3gwMDIwX2RldmU=
```

### Response

<!-- {
  "blockType": "response",
  "name": "get-custom-question",
  "@odata.type": "microsoft.graph.meetingRegistrationQuestion"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/customQuestions",
  "id": "MSMxY2E2ZmE3OS1hOTY3LTQ4ZX3lvdV94MDAyMF9hX3gwMDIwX2RldmU=",
  "displayName": "Are you a developer?",
  "isRequired": true,
  "answerInputType": "radioButton",
  "answerOptions": [
    "Yes",
    "No"
  ]
}
```
