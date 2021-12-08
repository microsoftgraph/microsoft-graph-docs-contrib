---
title: "Create externalMeetingRegistration"
description: "Enable external registration for an online meeting."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Create externalMeetingRegistration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable registration for an [onlineMeeting](../resources/onlinemeeting.md) with external registration provider. An online meeting can only have one registration enabled.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetings.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application | OnlineMeetings.ReadWrite.All |

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with user ID specified in the request path).

## HTTP request

To create external meeting registration with delegated (`/me`) and app (`/users/{userId}/`) permission:
<!-- { "blockType": "ignored" } -->
```http
POST /me/onlineMeetings/{meetingId}/registration
POST /users/{userId}/onlineMeetings/{meetingId}/registration
```

> **Note:** `userId` is the **objectID** of the meeting organizer.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

In the request body, supply a JSON representation of a [externalMeetingRegistration](../resources/externalmeetingregistration.md) object.

> [!IMPORTANT]
> You must supply a `@odata.type` property to specify the registration type. See [example](#example) below.

## Response

If successful, this method returns a `201 Created` response code and [meetingRegistration](../resources/meetingregistration.md) object in the response body.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "create-external-registration",
  "@odata.type": "microsoft.graph.externalMeetingRegistration"
}-->

```http
POST https://graph.microsoft.com/beta/me/onlineMeetings/{meetingId}/registration
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalMeetingRegistration",
  "allowedRegistrant": "everyone",
}
```

### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "create-external-registration",
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
  "allowedRegistrant": "everyone",
}
```
