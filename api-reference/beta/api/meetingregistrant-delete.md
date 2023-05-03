---
title: "Delete meetingRegistrant"
description: "Cancel an onlineMeeting registration for a meetingRegistrant."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Unenroll meeting registrant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel an [onlineMeeting](../resources/onlinemeeting.md) registration for a [meetingRegistrant](../resources/meetingregistrant.md) on behalf of the registrant.

Only use this method when the **allowedRegistrant** property of the [meetingRegistration](../resources/meetingregistration.md) object has a value of `organization` and the registrant's delegated permission was used to enroll. When the **allowedRegistrant** value is `everyone`, registrants can only use the link in the email they receive to cancel their registration.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | OnlineMeetings.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{userId}/onlineMeetings/{meetingId}/registration/registrants/{id}
```

>**Notes:**
>
> - `userId` is the objectID of the meeting organizer.
> - `meetingId` is the **id** of an [onlineMeeting](../resources/onlineMeeting.md) object.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method only returns a `204 No Content` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete-registratrant-user",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ", "16664f75-11dc-4870-bec6-38c1aaa81431", "gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqc8soJZw5Pg,3aMJxgQBxEufdo7_Qube_w,YgKy1Rtx-0SFjRbv-ww1ag,Cuzk8JP_iTTWqCOyVcalVA"]
}-->

```http
DELETE https://graph.microsoft.com/beta/users/16664f75-11dc-4870-bec6-38c1aaa81431/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration/registrants/gWWckDBR6UOI8_yzWCzeNw,6pAAiSU1bkGqc8soJZw5Pg,3aMJxgQBxEufdo7_Qube_w,YgKy1Rtx-0SFjRbv-ww1ag,Cuzk8JP_iTTWqCOyVcalVA
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-registratrant-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-registratrant-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "name": "delete-registratrant-user",
}-->

```http
HTTP/1.1 204 No Content
```
