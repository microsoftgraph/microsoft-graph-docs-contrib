---
title: "Create customRegistrationQuestion"
description: "Create custom meeting registration question."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Create customRegistrationQuestion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a custom question of a [meetingRegistration](../resources/meetingRegistration.md).

> [!TIP]
> Custom registration questions can be created in line upon creating a meeting registration. See [Create registration](meetingRegistration-create.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not Supported. |
| Application | Not Supported. |

## HTTP request

To create a custom registration question with delegated permission:
<!-- { "blockType": "ignored" } -->
```http
POST /me/onlineMeetings/{id}/registration/customQuestions
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply a JSON representation of a Non-readonly properties of a [meetingRegistrationQuestion](../resources/meetingRegistrationQuestion.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [meetingRegistrationQuestion](../resources/meetingRegistrationQuestion.md) object in the response body.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "create-custom-question"
}-->

```http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/customQuestions
Content-Type: application/json

{
  "displayName": "What's your job position?",
  "isRequired": false,
  "answerInputType": "text"
}
```

### Response

<!-- {
  "blockType": "response",
  "name": "create-custom-question",
  "@odata.type": "microsoft.graph.meetingRegistrationQuestion"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/customQuestions/$entity",
  "id": "MSNhYjc5NWI4MC119zX3gwMDIwX3lvdXJfeDAwMjBfam8=",
  "displayName": "What's your job position?",
  "isRequired": false,
  "answerInputType": "text",
  "answerOptions": []
}
```
