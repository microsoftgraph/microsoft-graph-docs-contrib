---
title: "Update meetingRegistrationQuestion"
description: "Update a custom meeting registration question associated with a meetingRegistration object."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Update meetingRegistrationQuestion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a [custom registration question](../resources/meetingRegistrationQuestion.md) associated with a [meetingRegistration](../resources/meetingRegistration.md) object on behalf of the organizer.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/onlineMeetings/{meetingId}/registration/customQuestions/{id}
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply only the value of properties that need to be updated in a JSON representation of a [meetingRegistrationQuestion](../resources/meetingRegistrationQuestion.md) object.

## Response

If successful, this method returns a `200 OK` response code and an updated [meetingRegistrationQuestion](../resources/meetingRegistrationQuestion.md) object in the response body.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "update-custom-question"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions/MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=
Content-Type: application/json

{
  "answerInputType": "radioButton",
  "answerOptions": [
    "Software Engineer",
    "Software Development Manager",
    "Product Manager",
    "Data scientist",
    "Other"
  ]
}
```

### Response

<!-- {
  "blockType": "response",
  "name": "update-custom-question",
  "@odata.type": "microsoft.graph.meetingRegistrationQuestion"
}-->

> **Note**: The response object shown here might be shortened for readability.

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/customQuestions/$entity",
  "id": "MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=",
  "displayName": "What's your job position?",
  "isRequired": false,
  "answerInputType": "radioButton",
  "answerOptions": [
      "Software Engineer",
      "Software Development Manager",
      "Product Manager",
      "Data scientist",
      "Other"
  ]
}
```
