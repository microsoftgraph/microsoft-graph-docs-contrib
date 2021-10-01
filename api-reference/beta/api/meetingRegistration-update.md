---
title: "Update meeting registration"
description: "Update meeting registration."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: apiPageType
---

# Update meeting registration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update registration information of an [onlineMeeting](../resources/onlinemeeting.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not Supported. |
| Application | Not Supported. |

## HTTP request

To update registration for an online meeting with delegated permission:
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/onlineMeetings/{meetingId}/registration
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply only the value of properties that need to be updated in a JSON representation of a [meetingRegistration](../resources/meetingRegistration.md) objet.

> [!TIP]
>
>- All properties can be updated except **allowedRegistrant**.
>- However, you cannot update **customQuestions** in line. Use [update custom question](meetingRegistration-get.md) method to update **customQuestions**.
>- When updating **speakers**, always supply a full list of speakers.

## Response

If successful, this method returns a `200 OK` response code and updated [meetingRegistration](../resources/meetingRegistration.md) objet in the response body.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "update-registration"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration
Content-Type: application/json

{
  "subject":"Microsoft Ignite: Day 1",
  "startDateTime":"2021-11-02T08:00:00Z",
  "endDateTime":"2021-11-02T15:45:00Z",
  "speakers": [
    {
      "displayName": "Satya Nadella",
      "bio": "Chairman and Chief Executive Officer, Microsoft"
    },
    {
      "displayName": "Vasu Jakkal",
      "bio": "CVP, Microsoft Security, Compliance & Identity, Microsoft"
    }
  ]
}
```

### Response

<!-- {
  "blockType": "response",
  "name": "update-registration"
}-->

```http
HTTP/1.1 200 OK
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
  ],
}
```
