---
title: "Create meeting registration"
description: "Create and enable meeting registration."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: apiPageType
---

# Create meeting registration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create and enable registration for an [onlineMeeting](../resources/onlinemeeting.md). One online meeting can only have one registration enabled.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not Supported. |
| Application | Not Supported. |

## HTTP request

To enable registration for an online meeting with delegated permission:
<!-- { "blockType": "ignored" } -->
```http
POST /me/onlineMeetings/{meetingId}/registration
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body

In the request body, supply a JSON representation of a [meetingRegistration](../resources/meetingRegistration.md) objet.

## Response

If successful, this method returns a `201 Created` response code and [meetingRegistration](../resources/meetingRegistration.md) objet in the response body.

> [!TIP]
> **customQuestions** is a related resource that can only be created, but not returned in line. Use [Get registration](meetingRegistration-get.md) or [Get custom questions](meetingRegistration-get.md) method to retrieve **customQuestions**.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "create-registration"
}-->

```http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration
Content-Type: application/json

{
  "subject":"Microsoft Ignite",
  "description": "Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.",
  "startDateTime":"2021-11-02T08:00:00Z",
  "endDateTime":"2021-11-02T04:00:00Z",
  "allowedRegistrant": "everyone",
  "speakers": [
    {
      "displayName": "Satya Nadella",
      "bio": "Chairman and Chief Executive Officer, Microsoft"
    },
    {
      "displayName": "Scott Guthrie",
      "bio": "EVP, Cloud and AI Group, Microsoft"
    }
  ],
  "customQuestions": [
    {
      "displayName": "Are you a developer?",
      "answerInputType": "radioButton",
      "answerOptions": [ "Yes", "No" ],
      "isRequired": true
    },
    {
      "displayName": "Where did you hear about us?",
      "answerInputType": "text",
      "isRequired": false
    }
  ]
}
```

### Response

<!-- {
  "blockType": "response",
  "name": "create-registration"
}-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/testprodbetafrpeng-dev/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/$entity",
  "id": "gWWckDBR6UOI8_yzWCzeNw,6pABiSU1bkGqzLnbHG_muA,bzLh6uR-5EGYsCvtvIvs6Q,luiTigKrcUGE6Cm33MyQgA,29OIGSH4skyQNu6mNxJr3w,m2bnpmqE_EqwV1Q8dr280E",
  "allowedRegistrant": "everyone",
  "subject": " Microsoft Ignite",
  "description": "Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.",
  "startDateTime": "2021-11-02T08:00:00Z",
  "endDateTime": "2021-11-02T04:00:00Z",
  "speakers": [
    {
      "displayName": "Satya Nadella",
      "bio": "Chairman and Chief Executive Officer, Microsoft"
    },
    {
      "displayName": "Scott Guthrie",
      "bio": "EVP, Cloud and AI Group, Microsoft"
    }
  ]
}
```
