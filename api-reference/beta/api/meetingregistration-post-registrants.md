---
title: "Create meetingRegistrant"
description: "Enroll a meeting registrant."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Create meetingRegistrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enroll a [meeting registrant](../resources/meetingregistrant.md) in an online meeting that has [meeting registration](../resources/meetingregistration.md) enabled on behalf of the registrant. This operation has two scenarios:

- If the value of the **allowedRegistrant** property of the [meetingRegistration](../resources/meetingregistration.md) object is `organization`, registrants will be required to sign in before they register for the meeting. The **firstName**, **lastName**, and **email** must match the information stored in Azure Active Directory (Azure AD).
- If the value of the **allowedRegistrant** property of the [meetingRegistration](../resources/meetingregistration.md) object is `everyone`, registrants will not be required to sign in and will be considered anonymous.

In either scenario, the registrant will receive an email notification that contains their registration information.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | OnlineMeetings.Read.All |

> [!TIP]
>
> - If the value of the **allowedRegistrant** property of the [meetingRegistration](../resources/meetingregistration.md) object is `organization`, use the registrant's delegated permission to enroll.
> - If the value of the **allowedRegistrant** property of the [meetingRegistration](../resources/meetingregistration.md) object is `everyone`, use the registrant's delegated permission to enroll.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/onlineMeetings/{id}/registration/registrants
```

> **Note:** `userId` is the **objectID** of the meeting organizer.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply a JSON representation of the editable properties of a [meetingRegistrant](../resources/meetingRegistrant.md) object.

> [!IMPORTANT]
> You must supply the **@odata.type** property to specify the registrant type. For more details, see the following [example](#examples).

## Response

If successful, this method returns a `200 OK` response code and a partial [meetingRegistrant](../resources/meetingRegistrant.md) object in the response body.

> [!TIP]
> The response body will contain different information depending on the value of **allowedRegistrant**.
>
> - If the value of the **allowedRegistrant** property is `organization`, only **id** and **joinWebUrl** will be returned in the [meetingRegistrant](../resources/meetingRegistrant.md) object. Registrants can use the **id** to cancel their registration or **joinWebUrl** to join the meeting.
> - If the value of the **allowedRegistrant** property is `everyone`, an empty [meetingRegistrant](../resources/meetingRegistrant.md) object will be returned. Registrants need to use the links in the email they receive to cancel registration or join the meeting.

## Examples

### Example 1: Enroll a signed-in registrant

The following example shows how to enroll a signed-in registrant with the registrant's delegated permission when the meeting has **allowedRegistrant** set to `organization`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add-registratrant-user",
  "sampleKeys": ["16664f75-11dc-4870-bec6-38c1aaa81431", "MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```http
POST https://graph.microsoft.com/beta/users/16664f75-11dc-4870-bec6-38c1aaa81431/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.meetingRegistrant",
  "firstName": "Frederick",
  "lastName": "Cormier",
  "email": "frederick.cormier@contoso.com",
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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-registratrant-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-registratrant-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "name": "add-registratrant-user",
  "@odata.type": "microsoft.graph.meetingRegistrant"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/registrants/$entity",
  "@odata.type": "#microsoft.graph.meetingRegistrant",
  "id": "gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqzLnbHG_muA,bzLh6uR-5EGYsCvtvIvs6Q,E4jbleVFdE6BDf6ei3YBOA,KvXQzK4zfU-5LQj_ZLWgow,A7_SArco00S-Qr707l0vBA,UFakyZrk1K9vBacExW1muA",
  "registrationDateTime": null,
  "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_MmE4Mzg1OTItYjg2Ni00ZmNmLWI5NjMtODNkZDJiMWNlNTVi%40thread.v2/0?context=%7b%22Tid%22%3a%22909c6581-5131-43e9-88f3-fcb3582cde37%22%2c%22Oid%22%3a%22dc17674c-81d9-4adb-bfb2-8f6a442e4622%22%2c%22prid%22%3a%22gWWckDBR6UOI8_yzWCzeNw%2c6pAAiSa1bkGqzLnbHG_muA%2cbzLh6uR-5EGdsCvtvIvs6Q%2cE4jbleVFdE6BDf6ei3YBOA%2cKvXQzK4zfU-5LQj_ZLWgow%2cA7_SArco00S-Qr707l0vBA%2cUFaiyZrk1K9vBacExW1muA%22%2c%22isPublic%22%3afalse%7d",
  "firstName": null,
  "lastName": null,
  "email": null,
  "status": null,
  "customQuestionAnswers": []
}
```

### Example 2: Enroll an anonymous registrant

The following example shows how to enroll an anonymous registrant with application permission when the meeting has **allowedRegistrant** set to `everyone`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "add-registratrant-app",
  "sampleKeys": ["dc17674c-81d9-4adb-bfb2-8f6a442e4622", "MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```http
POST https://graph.microsoft.com/beta/users/dc17674c-81d9-4adb-bfb2-8f6a442e4622/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.meetingRegistrant",
  "firstName": "Lisa",
  "lastName": "Adkins",
  "email": "lisa.adkins@contoso.com",
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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/add-registratrant-app-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/add-registratrant-app-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "name": "add-registratrant-app",
  "@odata.type": "microsoft.graph.meetingRegistrant"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/registrants/$entity",
    "@odata.type": "#microsoft.graph.meetingRegistrant",
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
