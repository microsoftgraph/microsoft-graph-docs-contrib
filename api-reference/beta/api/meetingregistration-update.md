---
title: "Update meetingRegistration"
description: "Update meeting registration."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Update meetingRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the details of a [meetingRegistration](../resources/meetingregistration.md) object assciated with an [onlineMeeting](../resources/onlinemeeting.md) on behalf of the organizer.

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
PATCH /me/onlineMeetings/{id}/registration
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply only the value of properties that need to be updated in a JSON representation of a [meetingRegistration](../resources/meetingregistration.md) object.

> [!TIP]
>
>- All properties that are not read only can be updated, with the exception of the **allowedRegistrant** property.
>- The **customQuestions** navigation property cannot be updated; use the [Update meetingRegistrationQuestion](meetingregistrationquestion-update.md) method to update it.
>- When updating **speakers**, always supply a full list of speakers.

## Response

If successful, this method returns a `200 OK` response code and an updated [meetingRegistration](../resources/meetingregistration.md) object in the response body.

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
  "startDateTime":"2021-11-02T08:00:00-08:00",
  "endDateTime":"2021-11-02T15:45:00-08:00",
  "speakers": [
    {
      "displayName": "Henry Ross",
      "bio": "Chairman and Chief Executive Officer"
    },
    {
      "displayName": "Fred Ryan",
      "bio": "CVP"
    }
  ]
}
```

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "update-registration",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingRegistration"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration(customQuestions())/$entity",
  "id": "gWWckDBR6UOI8_yzWCzeNw,6pABiSU1bkGqzLnbHG_muA,bzLh6uR-5EGYsCvtvIvs6Q,luiTigKrcUGE6Cm33MyQgA,29OIGSH4skyQNu6mNxJr3w,m2bnpmqE_EqwV1Q8dr280E",
  "registrationPageWebUrl": "https://teams.microsoft.com/registration/gWWckDBR6UOI8_yzWCzeNw,6pABiSU1bkGqzLnbHG_muA,bzLh6uR-5EGYsCvtvIvs6Q,luiTigKrcUGE6Cm33MyQgA,29OIGSH4skyQNu6mNxJr3w,m2bnpmqE_EqwV1Q8dr280E?mode=read&tenantId=eefc0b3a-a334-4fb7-ac60-2f1cf13ec00d",
  "allowedRegistrant": "everyone",
  "subject": "Microsoft Ignite: Day 1",
  "description": "Join us November 2–4, 2021 to explore the latest tools, training sessions, technical expertise, networking opportunities, and more.",
  "startDateTime": "2021-11-02T16:00:00Z",
  "endDateTime": "2021-11-02T23:45:00Z",
  "registrationPageViewCount": null,
  "speakers": [
    {
      "displayName": "John Doe",
      "bio": "Chairman and Chief Executive Officer"
    },
    {
      "displayName": "Foo Bar",
      "bio": "CVP, Microsoft Security, Compliance & Identity"
    }
  ]
}
```
