---
title: "Delete meetingRegistrant"
description: "Cancel an onlineMeeting registration for a meetingRegistrant."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 10/03/2024
---

# Unenroll meeting registrant (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The meeting registrant API is deprecated and will stop returning data on **December 12, 2024**. Please use the new [webinar APIs](../resources/virtualeventwebinar.md). For more information, see [Deprecation of the Microsoft Graph meeting registration beta APIs](https://devblogs.microsoft.com/microsoft365dev/deprecation-of-the-microsoft-graph-meeting-registration-beta-apis/). 

Cancel an [onlineMeeting](../resources/onlinemeeting.md) registration for a [meetingRegistrant](../resources/meetingregistrant.md) on behalf of the registrant.

Only use this method when the **allowedRegistrant** property of the [meetingRegistration](../resources/meetingregistration.md) object has a value of `organization` and the registrant's delegated permission was used to enroll. When the **allowedRegistrant** value is `everyone`, registrants can only use the link in the email they receive to cancel their registration.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "meetingregistrant_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/meetingregistrant-delete-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-registratrant-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-registratrant-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-registratrant-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-registratrant-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-registratrant-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-registratrant-user-python-snippets.md)]
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
