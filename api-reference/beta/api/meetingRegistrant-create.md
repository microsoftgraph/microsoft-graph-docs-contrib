---
title: "Add meeting registrants"
description: "Add meeting registrants."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: 09/30/2021
doc_type: apiPageType
---

# Add meeting registrants

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Register a participant for an [onlineMeeting](../resources/onlinemeeting.md) that has [registration](../resources/meetingRegistration.md) enabled. This operation has two scenarios depending on the value of **allowedRegistrant** of the [registration](../resources/meetingRegistration.md).

- When **allowedRegistrant** is `organization`, participants will be required to sign in before register for the meeting. The **firstName**, **lastName** and **email** must match the information stored in AAD.
- When **allowedRegistrant** is `everyone`, particpants will not be required to sign in and will be considered as an anonymous participant.

See tips in following sections for more details.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.Read, OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not Supported. |
| Application | OnlineMeetings.Read.All |

> [!TIP]
>
> Different permissions are required for different value of **allowedRegistrant**.
>
> `organization`
>
>- Participant will be reqired to sign in. In this scenario, use the participant's delegated permission to register on behalf of that participant.
>
> `everyone`
>
>- Participant will not be required to sign in. In this scenario, use application permission to register an anonymous participant.

## HTTP request

To register a participant for an online meeting with delegated or application permission:
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/onlineMeetings/{id}/registration/registrants
```

`userId` is the objectID of the meeting organizer.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a partial [meetingRegistrant](../resources/meetingRegistrant.md) object in the response body.

> [!TIP]
>
>- When **allowedRegistrant** is `organization`, only and **id** and **joinWebUrl** will be returned.
>- When **allowedRegistrant** is `everyone`, an empty [meetingRegistrant](../resources/meetingRegistrant.md) object will be returned. Anonymous participants need to use the link in the email they receive to join or unregister from the meeting.

## Examples

### Example 1: Register a signed-in participant

This example shows how to register a signed-in participant with that user's delegated permission when the meeting has **allowedRegistrant** set to `organization`.

#### Request

<!-- {
  "blockType": "request",
  "name": "add-registratrant-user"
}-->

```http
POST https://graph.microsoft.com/beta/users/dc17674c-81d9-4adb-bfb2-8f6a442e4622/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants
Content-Type: application/json

{
  "firstName": "Elvin",
  "lastName": "Yang",
  "email": "foo.bar@hatmail.com",
  "customQuestionAnswers": [
    {
      "questionId": "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=",
      "value": "No"
    },
    {
      "questionId": "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
      "value": "Internet"
    }
  ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "name": "add-registratrant-user",
  "resource
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://canary.graph.microsoft.com/testprodbetafrpeng-dev/$metadata#users('dc17674c-81d9-4adb-bfb2-8f6a442e4622')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZjZhNDQyZTQ2MjIqMCoqMTk6bWVldGluZ19NbUU0TXpnMU9USXRZamcyTmkwMFptTm1MV0k1TmpNdE9ETmtaREppTVdObE5UVmlAdGhyZWFkLnYy')/registration/registrants/$entity",
  "id": "gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqzLnbHG_muA,bzLh6uR-5EGYsCvtvIvs6Q,E4jbleVFdE6BDf6ei3YBOA,KvXQzK4zfU-5LQj_ZLWgow,A7_SArco00S-Qr707l0vBA,UFakyZrk1K9vBacExW1muA",
  "registrationDateTime": null,
  "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_MmE4Mzg1OTItYjg2Ni00ZmNmLWI5NjMtODNkZDJiMWNlNTVi%40thread.v2/0?context=%7b%22Tid%22%3a%22909c6581-5130-43e9-88f3-fcb3582cde37%22%2c%22Oid%22%3a%22dc17674c-81d9-4adb-bfb2-8f6a442e4622%22%2c%22prid%22%3a%22gWWckDBR6UOI8_yzWCzeNw%2c6pAAiSU1bkGqzLnbHG_muA%2cbzLh6uR-5EGYsCvtvIvs6Q%2cE4jbleVFdE6BDf6ei3YBOA%2cKvXQzK4zfU-5LQj_ZLWgow%2cA7_SArco00S-Qr707l0vBA%2cUFakyZrk1K9vBacExW1muA%22%2c%22isPublic%22%3afalse%7d",
  "firstName": null,
  "lastName": null,
  "email": null,
  "status": null,
  "customQuestionAnswers": []
}
```

### Example 2: Register an anonymous participant

This example shows how to register an anonymous participant with application permission when the meeting has **allowedRegistrant** set to `everyone`.

#### Request

<!-- {
  "blockType": "request",
  "name": "add-registratrant-app"
}-->

```http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants
Content-Type: application/json

{
  "firstName": "Foo",
  "lastName": "Bar",
  "email": "foo.bar@hatmail.com",
  "customQuestionAnswers": [
    {
      "questionId": "MSM5YjlmM2Q4ZS03ZmVkLTRmN3gwMDIw94MDAyMF9hX3gwMDIwX2RldmU=",
      "value": "No"
    },
    {
      "questionId": "MSM5M2E2OWQ1Ni1jZTc4LTQDAwMjBfZGlkX3gwMDIwX3lvdV94MDAyMF8=",
      "value": "Internet"
    }
  ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "name": "add-registratrant-app"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetafrpeng-dev/$metadata#users('dc17674c-81d9-4adb-bfb2-8f6a442e4622')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZjZhNDQyZTQ2MjIqMCoqMTk6bWVldGluZ19NbUU0TXpnMU9USXRZamcyTmkwMFptTm1MV0k1TmpNdE9ETmtaREppTVdObE5UVmlAdGhyZWFkLnYy')/registration/registrants/$entity",
    "id": "",
    "registrationDateTime": null,
    "joinWebUrl": "",
    "firstName": null,
    "lastName": null,
    "email": null,
    "status": null,
    "customQuestionAnswers": []
}
```
