---
title: "Create externalMeetingRegistration"
description: "Enable external registration for an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Create externalMeetingRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable registration for an [onlineMeeting](../resources/onlinemeeting.md) using an external registration system. An online meeting can only have one registration enabled.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "externalmeetingregistration_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/externalmeetingregistration-post-permissions.md)]

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with user ID specified in the request path).

## HTTP request

To create external meeting registration with delegated (`/me`) and app (`/users/{userId}/`) permission:

<!-- { "blockType": "ignored" } -->
```http
POST /me/onlineMeetings/{meetingId}/registration
POST /users/{userId}/onlineMeetings/{meetingId}/registration
```

> [!TIP]
>
>- `userId` is the **objectId** of the meeting organizer.
>- `meetingId` is the **id** of the [onlineMeeting](../resources/onlinemeeting.md) object.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply a JSON representation of an [externalMeetingRegistration](../resources/externalmeetingregistration.md) object.

> [!IMPORTANT]
> You must supply the **@odata.type** property to specify the registration type. For more details, see the following [example](#example).

## Response

If successful, this method returns a `201 Created` response code and an [externalMeetingRegistration](../resources/externalmeetingregistration.md) object in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create-externalregistration",
  "@odata.type": "microsoft.graph.externalMeetingRegistration",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/registration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalMeetingRegistration",
  "allowedRegistrant": "everyone"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-externalregistration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-externalregistration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "create-externalregistration",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalMeetingRegistration"
}-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/registration/$entity",
  "@odata.type": "#microsoft.graph.externalMeetingRegistration",
  "id": "f23714a3-a2f4-4b1d-96d2-bfe9097e7163",
  "allowedRegistrant": "everyone"
}
```
