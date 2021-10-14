---
title: "Delete meetingRegistrationQuestion"
description: "Delete a custom meeting registration question from an online meeting."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Delete meetingRegistrationQuestion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [custom registration question](../resources/meetingRegistrationQuestion.md) from a [meetingRegistration](../resources/meetingRegistration.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

## HTTP request

To get a custom registration question by ID with delegated permission:
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/onlineMeetings/{meetingId}/registration/customQuestions/{id}
```

> [!NOTE]
> `meetingId` is the **id** of an [onlineMeeting](../resources/onlineMeeting.md) object.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method only returns a `204 No Content` response code.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "delete-custom-question"
}-->

```http
DELETE https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions/MSMxY2E2ZmE3OS1hOTY3LTQ4ZX3lvdV94MDAyMF9hX3gwMDIwX2RldmU=
```

### Response

<!-- {
  "blockType": "response",
  "name": "delete-custom-question"
}-->

```http
HTTP/1.1 204 No Content
```
