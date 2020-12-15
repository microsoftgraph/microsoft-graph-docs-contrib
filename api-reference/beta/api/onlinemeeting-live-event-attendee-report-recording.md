---
title: "Live event attendee report and recordings"
description: "Retrieve the attendee report and recordings of a live event meeting."
author: "elvinyang-msft"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Live event attendee report and recordings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the attendee report and recordings of a live event [onlineMeeting](../resources/onlinemeeting.md) object. Currently these two resources are exclusively available to live events.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)           |
| :------------------------------------- | :---------------------------------------------------- |
| Delegated (work or school account)     | OnlineMeetings.Read, OnlineMeetings.ReadWrite         |
| Delegated (personal Microsoft account) | Not Supported.                                        |
| Application                            | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All* |

> [!IMPORTANT]
> - Administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user, authorizing the app configured in the policy to retrieve an online meeting on behalf of that user (user ID specified in the request path).
> - Only the event organizer can access attendee reports and recordings.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{organizerId}/onlineMeetings/{meetingId}/attendeeReport
GET /users/{organizerId}/onlineMeetings/{meetingId}/recording
GET /users/{organizerId}/onlineMeetings/{meetingId}/alternativeRecording
```

## Request headers
| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `302 Found` response code and a location of the requested file.

> **Notes:**
>
> * Attendee report and recordings are only available when the live event has concluded.
> * The download link in the `302 Found` response expires in one minute, so the client should start downloading before expiry.

## Examples

### Example 1: download attendee report

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-attendeeReport"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/6c48f2c0-382d-40d2-b1f9-fe108901242a/attendeeReport
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-onlinemeeting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onlinemeeting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-onlinemeeting-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onlinemeeting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 302 Found
Location: https://01-a-noam.dog.attend.teams.microsoft.com/broadcast/909c6581-5130-43e9-88f3-fcb3582cde37/dc17674c-81d9-4adb-bfb2-8f6a442e4622/19%3Ameeting_ZWE0YzQwMzItYjEyNi00NjJjLWE4MjYtOTUxYjE1NmFjYWIw%40thread.v2/0/resource/attendeeReport
```
