---
title: "Get onlineMeeting"
description: "Retrieve the properties and relationships of an onlineMeeting object."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 11/01/2024
---

# Get onlineMeeting

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of an [onlineMeeting](../resources/onlinemeeting.md) object.

For example, you can:

- Get details of an onlineMeeting using [videoTeleconferenceId](#example-1-retrieve-an-online-meeting-by-videoteleconferenceid), [meeting ID](#example-2-retrieve-an-online-meeting-by-meeting-id), [joinWebURL](#example-3-retrieve-an-online-meeting-by-joinweburl), or [joinMeetingId](#example-4-retrieve-an-online-meeting-by-joinmeetingid).
- Use the `/attendeeReport` path to get the attendee report of a [Microsoft Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events) in the form of a download link. **(deprecated)**
- Use the `/recording` and `/alternativeRecording` paths to get the recordings of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events) in the form of a download link, as shown in [example 6](#example-6-fetch-the-recording-of-a-teams-live-event-deprecated). **(deprecated)**

Teams live event attendee report **(deprecated)** and Teams live event recordings **(deprecated)** are online meeting artifacts. For details, see [Online meeting artifacts and permissions](/graph/cloud-communications-online-meeting-artifacts). 

> [!CAUTION]
> Teams live events was not removed on September 30, 2024, as previously announced. You can continue to use Teams live events; however, to get the latest new features and experiences, we recommend that you use [Teams town halls](https://support.microsoft.com/en-us/office/switch-from-microsoft-teams-live-events-to-town-halls-c71bf6e2-ece1-4809-900e-51271f39ac72) and the [Microsoft Graph virtual event townhall APIs](../resources/virtualeventtownhall.md) instead.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions for the following HTTP requests:

<!-- { "blockType": "ignored" } -->

```http
GET /me/onlineMeetings/{meetingId}
GET /me/onlineMeetings?$filter=JoinWebUrl%20eq%20'{joinWebUrl}'
GET /me/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'{joinMeetingId}'
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_get", 
  "requestUrls": ["GET /me/onlineMeetings/{meetingId}", "GET /me/onlineMeetings?$filter=JoinWebUrl%20eq%20'{joinWebUrl}'", "GET /me/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'{joinMeetingId}'"],
  "mergePermissions": true
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-get-permissions.md)]

Permissions for the following HTTP requests:

<!-- { "blockType": "ignored" } -->

```http
GET /users/{userId}/onlineMeetings/{meetingId}
GET /users/{userId}/onlineMeetings?$filter=JoinWebUrl%20eq%20'{joinWebUrl}'
GET /users/{userId}/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'{joinMeetingId}'
GET /app/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'{videoTeleconferenceId}'
GET /communications/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'{videoTeleconferenceId}'
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_get_2", 
  "requestUrls": ["GET /users/{userId}/onlineMeetings/{meetingId}", "GET /users/{userId}/onlineMeetings?$filter=JoinWebUrl%20eq%20'{joinWebUrl}'", "GET /users/{userId}/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'{joinMeetingId}'", "GET /app/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'{videoTeleconferenceId}'", "GET /communications/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'{videoTeleconferenceId}'"],
  "mergePermissions": true
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-get-2-permissions.md)]

Permissions for the following HTTP requests:

<!-- { "blockType": "ignored" } -->

```http
GET /me/onlineMeetings/{meetingId}/attendeeReport
GET /users/{userId}/onlineMeetings/{meetingId}/attendeeReport
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_get_3", 
  "requestUrls": ["GET /me/onlineMeetings/{meetingId}/attendeeReport", "GET /users/{userId}/onlineMeetings/{meetingId}/attendeeReport"],
  "mergePermissions": true
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-get-3-permissions.md)]

Permissions for the following HTTP requests:

<!-- { "blockType": "ignored" } -->

```http
GET /me/onlineMeetings/{meetingId}/recording
GET /me/onlineMeetings/{meetingId}/alternativeRecording
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_get_4", 
  "requestUrls": ["GET /me/onlineMeetings/{meetingId}/recording", "GET /me/onlineMeetings/{meetingId}/alternativeRecording"],
  "mergePermissions": true
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-get-4-permissions.md)]

Permissions for the following HTTP requests:

<!-- { "blockType": "ignored" } -->

```http
GET /users/{userId}/onlineMeetings/{meetingId}/recording
GET /users/{userId}/onlineMeetings/{meetingId}/alternativeRecording
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_get_5", 
  "requestUrls": ["GET /users/{userId}/onlineMeetings/{meetingId}/recording", "GET /users/{userId}/onlineMeetings/{meetingId}/alternativeRecording"],
  "mergePermissions": true
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-get-5-permissions.md)]

> [!NOTE]
> To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with user ID specified in the request path).

> [!CAUTION]
> Only the _OnlineMeetingArtifact.Read.All_ permissions are required if you fetch online meeting artifacts. You can still fetch meeting artifacts without them until **January 15, 2022**. For details, see [Online meeting artifacts and permissions](/graph/cloud-communications-online-meeting-artifacts).

## HTTP request

To get an **onlineMeeting** using meeting ID with delegated (`/me`) and app (`/users/{userId}`) permission: 
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}
GET /users/{userId}/onlineMeetings/{meetingId}
```
These request URLs accept both the organizer's and the invited attendee's user token (delegated permission) or user ID (app permission).

To get an **onlineMeeting** using **videoTeleconferenceId** with app permission:
<!-- { "blockType": "ignored" } -->
```http
GET /app/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'{videoTeleconferenceId}'
GET /communications/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'{videoTeleconferenceId}'
```

To get an **onlineMeeting** using **joinWebUrl** with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings?$filter=JoinWebUrl%20eq%20'{joinWebUrl}'
GET /users/{userId}/onlineMeetings?$filter=JoinWebUrl%20eq%20'{joinWebUrl}'
```

To get an **onlineMeeting** using **joinMeetingId** with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'{joinMeetingId}'
GET /users/{userId}/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'{joinMeetingId}'
```

To get the attendee report of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events) with delegated (`/me`) and app (`/users/{userId}`) permission: **(deprecated)**
<!-- { "blockType": "ignored" }-->

```http
GET /me/onlineMeetings/{meetingId}/attendeeReport
GET /users/{userId}/onlineMeetings/{meetingId}/attendeeReport
```

To get the recordings of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events) with delegated (`/me`) and app (`/users/{userId}`) permission: **(deprecated)**
<!-- { "blockType": "ignored" }-->

```http
GET /me/onlineMeetings/{meetingId}/recording
GET /me/onlineMeetings/{meetingId}/alternativeRecording
GET /users/{userId}/onlineMeetings/{meetingId}/recording
GET /users/{userId}/onlineMeetings/{meetingId}/alternativeRecording
```

> [!NOTE]
>- The `/app` path is deprecated. Going forward, use the `/communications` path.
>- **userId** is the object ID of a user in [Microsoft Entra admin center > user management page](https://entra.microsoft.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).
>- `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.
> - **videoTeleconferenceId** is generated for Cloud-Video-Interop licensed users and can be found in an [onlineMeeting](../resources/onlinemeeting.md) object. For details, see [VTC conference id](/microsoftteams/cloud-video-interop-for-teams-set-up).
>- `joinWebUrl` must be URL encoded.
>- The format of `joinWebUrl` might differ from the following examples, depending on how the URLs were obtained. These variations don't affect how `joinWebUrl` is used in the API.
>- `joinMeetingId` is the meeting ID to be used to join a meeting.

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language | Language. Optional.       |

If the request contains an `Accept-Language` HTTP header, the `content` of `joinInformation` will be in the language and locale variant specified in the `Accept-Language` header. The default content will be in English.

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code. The response also includes one of the following:

- If you fetch an online meeting by meeting ID, this method returns an [onlineMeeting](../resources/onlinemeeting.md) object in the response body.
- If you fetch an online meeting by **videoTeleconferenceId** or **joinWebUrl**, this method returns a collection that contains only one [onlineMeeting](../resources/onlinemeeting.md) object in the response body.
- If you fetch the attendance report of an online meeting, this method returns a [meetingAttendanceReport](../resources/meetingAttendanceReport.md) object in the response body.
- If you fetch the attendee report or recording of a **Microsoft Teams Live Event**, this method returns a `Location` header that indicates the URI to the attendee report or recording, respectively. **(deprecated)**

> [!NOTE]
>- **joinMeetingIdSettings** might not be generated for some prescheduled meetings if the meeting was created before this feature was supported.

## Examples

### Example 1: Retrieve an online meeting by videoTeleconferenceId

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["123456789"],
  "name": "get-onlineMeeting"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/communications/onlineMeetings/?$filter=VideoTeleconferenceId%20eq%20'123456789'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-onlinemeeting-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-onlinemeeting-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-onlinemeeting-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-onlinemeeting-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onlinemeeting-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-onlinemeeting-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-onlinemeeting-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-onlinemeeting-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1574

{
  "@odata.type": "#microsoft.graph.onlineMeeting",
  "autoAdmittedUsers": "everyone",
  "audioConferencing": {
    "tollNumber": "55534478",
    "tollFreeNumber": "55390588",
    "ConferenceId": "9999999",
    "dialinUrl": "https://dialin.teams.microsoft.com/6787A136-B9B8-4D39-846C-C0F1FF937F10?id=xxxxxxx"
  },
  "chatInfo": {
    "@odata.type": "#microsoft.graph.chatInfo",
    "threadId": "19:cbee7c1c868258e3cebf7bee0d@thread.skype",
    "messageId": "153867081"
  },
  "creationDateTime": "2018-05-30T00:12:19.0726086Z",
  "endDateTime": "2018-05-30T01:00:00Z",
  "id": "112f7296-5fa4-42ca-bae8-6a692b15d4b8_19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype",
  "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3a:meeting_NTg0NmQ3NTctZDVkZDZk@thread.v2/0?context=%7b%22Tid%22%3a%aa674c-875-432d-bd41-3720e0a%22%2c%22Oid%22%3a%2f7296-5fa4-42ca-bae8-6a4b8%22%7d",
  "participants": {
    "attendees": [
      {
        "@odata.type": "#microsoft.graph.identitySet",
        "identity": {
          "user": {
            "@odata.type": "#microsoft.graph.identity",
            "id": "11296-5fa4-42ca-bae8-6a2b4b8",
            "tenantId": "aa674c-8475-432d-bd41-39f2e0a",
            "displayName": "Tyler Stein"
          }
        },
        "upn": "upn-value",
        "role": "attendee"
      }
    ],
    "organizer": {
      "@odata.type": "#microsoft.graph.identitySet",
      "identity": {
        "user": {
          "@odata.type": "#microsoft.graph.identity",
          "id": "58ede-f3cc-42eb-b2c1-e53ec96",
          "tenantId": "a7bdc-8475-432d-bd41-39f2e0a",
          "displayName": "Jasmine Miller"
        }
      },
      "upn": "upn-value",
      "role": "presenter"
    }
  },
  "startDateTime": "2018-05-30T00:30:00Z",
  "subject": "Test Meeting.",
  "videoTeleconferenceId": "123456789",
  "lobbyBypassSettings": {
    "scope": "everyone",
    "isDialInBypassEnabled": true
  },
  "joinMeetingIdSettings": {
    "isPasscodeRequired": false,
    "joinMeetingId": "1234567890",
    "passcode": null
  },
  "isEntryExitAnnounced": true,
  "allowedPresenters": "everyone",
  "allowMeetingChat": "enabled",
  "allowTeamworkReactions": true
}
```
>**Note:** If 'Accept-Language: ja' is specified to indicate Japanese, for example, the response will include the following.

```json
    "joinInformation": {
        "content": "data%3Atext%2Fhtml%2C%0A++%3Cdiv+style%3D%22width%3A100%25%3Bheight%3A+20px%3B%22%3E%0A%09%09%3Cspan+style%3D%22white-space%3Anowrap%3Bcolor%3Agray%3Bopacity%3A.36%3B%22%3E________________________________________________________________________________%3C%2Fspan%3E%0A%09+%3C%2Fdiv%3E%0A++++%3Cdiv+class%3D%22me-email-text%22+style%3D%22color%3A%23252424%3Bfont-family%3A'Segoe+UI'%2C'Helvetica+Neue'%2CHelvetica%2CArial%2Csans-serif%3B%22%3E%0A+++%3Cdiv+style%3D%22margin-top%3A+24px%3B+margin-bottom%3A+10px%3B%22%3E%0A++++++++%3Ca+class%3D%22me-email-headline%22%0A++++++++++++++style%3D%22font-size%3A+18px%3Bfont-family%3A'Segoe+UI+Semibold'%2C'Segoe+UI'%2C'Helvetica+Neue'%2CHelvetica%2CArial%2Csans-serif%3Btext-decoration%3A+underline%3Bcolor%3A+%236264a7%3B%22%0A++++++++++++++href%3D%22https%3A%2F%2Fteams.microsoft.com%2Fl%2Fmeetup-join%2F19%253ameeting_NDRiZjRiMmUtODI5OC00MzRlLTk1ZWEtMGY1000000000000%2540thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%252279a788bf-86f1-41af-91ab-000000000000%2522%252c%2522Oid%2522%253a%2522d4a060b5-a8fc-450c-837b-000000000000%2522%257d%22%0A++++++++++++++target%3D%22_blank%22+rel%3D%22noreferrer+noopener%22%3EMicrosoft+Teams+%E4%BC%9A%E8%AD%B0%E3%81%AB%E5%8F%82%E5%8A%A0%3C%2Fa%3E%0A++++++%3C%2Fdiv%3E%0A%09+%3Cdiv%3E%0A++++%0A++++++%3Cdiv%3E%0A++++++++%3Ca+class%3D%22me-email-link%22+style%3D%22font-size%3A+14px%3Btext-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22%0A++++++++++href%3D%22tel%3A%2B16477490000%2C%2C11160000%26%2335%3B+%22+target%3D%22_blank%22+rel%3D%22noreferrer+noopener%22%3E%2B16477490000%3C%2Fa%3E%0A++++++%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%26nbsp%3B++(%E6%9C%89%E6%96%99)+%3C%2Fspan%3E%0A++++++%3C%2Fdiv%3E%0A++++%0A++%3C%2Fdiv%3E%0A%0A%09+%0A++++++%3Cdiv+style%3D%22margin-top%3A+10px%3B+margin-bottom%3A+20px%3B%22%3E%0A++++++++%3Cspan+style%3D%22font-size%3A+12px%3B%22%3E%0A++++++++++%E4%BC%9A%E8%AD%B0+ID%3A%0A++++++++%3C%2Fspan%3E%0A++++++%3Cspan+style%3D%22font-size%3A+14px%3B%22%3E%0A++++++++111+000+00%23%0A++++++%3C%2Fspan%3E%0A++++%3C%2Fdiv%3E%0A++++%0A%09+%0A++++++++%3Cdiv+style%3D%22margin-bottom%3A+24px%3B%22%3E%0A++++++++++++++%3Ca+class%3D%22me-email-link%22+style%3D%22font-size%3A+12px%3Btext-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22+target%3D%22_blank%22+href%3D%22https%3A%2F%2Fdialin.teams.microsoft.com%2F8bf6e654-57eb-4b85-aeaf-36c84429b2fe%3Fid%3D11160000%22+rel%3D%22noreferrer+noopener%22%3E%E6%9C%80%E5%AF%84%E3%82%8A%E3%81%AE%E5%9B%BD%E3%81%AE%E9%9B%BB%E8%A9%B1%E7%95%AA%E5%8F%B7%E3%82%92%E6%A4%9C%E7%B4%A2%3C%2Fa%3E%0A+++++++++%7C%0A++++++++++++++%3Ca+class%3D%22me-email-link%22+style%3D%22font-size%3A+12px%3Btext-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22+target%3D%22_blank%22+href%3D%22https%3A%2F%2Fmysettings.lync.com%2Fpstnconferencing%22+rel%3D%22noreferrer+noopener%22%3E%0A++++++++PIN+%E3%82%92%E3%83%AA%E3%82%BB%E3%83%83%E3%83%88%3C%2Fa%3E%0A+++++++++%7C+%3Ca+class%3D%22me-email-link%22+style%3D%22font-size%3A+12px%3Btext-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22+target%3D%22_blank%22+href%3D%22https%3A%2F%2Faka.ms%2FJoinTeamsMeeting%22+rel%3D%22noreferrer+noopener%22%3ETeams+%E3%81%AE%E8%A9%B3%E7%B4%B0%E3%82%92%E8%A1%A8%E7%A4%BA%3C%2Fa%3E%0A+++++%7C+%3Ca+class%3D%22me-email-link%22+style%3D%22font-size%3A+12px%3Btext-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22+target%3D%22_blank%22+href%3D%22https%3A%2F%2Fteams.microsoft.com%2FmeetingOptions%2F%3ForganizerId%3Dd4a060b5-a8fc-450c-837b-000000000000%26tenantId%3D79a788bf-86f1-41af-91ab-000000000000%26threadId%3D19_meeting_NDRiZjRiMmUtODI5OC00MzRlLTk1ZWEtMGY1000000000000%40thread.v2%26messageId%3D0%26language%3Dja%22+rel%3D%22noreferrer+noopener%22%3E%E4%BC%9A%E8%AD%B0%E3%81%AE%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3%3C%2Fa%3E%0A++++%0A++++++++%3C%2Fdiv%3E%0A++++%0A+++++%0A++++++++%3Cdiv+style%3D%22font-size%3A+14px%3B+margin-bottom%3A+4px%3B%22%3E%0A++++++++++++%E3%83%93%E3%83%87%E3%82%AA%E4%BC%9A%E8%AD%B0%E3%83%87%E3%83%90%E3%82%A4%E3%82%B9%E3%81%A7%E5%8F%82%E5%8A%A0%0A++++++++%3C%2Fdiv%3E%0A%0A++++++++%3Cdiv+style%3D%22font-size%3A12px%3B+margin-bottom%3A+4px%3B%22%3E%0A++++++++++++%3Ca+class%3D%22me-email-link%22+style%3D%22text-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22+href%3D%22%22%3E000000000%40t.abcd.vc%3C%2Fa%3E+VTC+%E4%BC%9A%E8%AD%B0+ID%3A+0180300000%0A++++++++%3C%2Fdiv%3E%0A%0A++++++++%3Cdiv+style%3D%22font-size%3A+12px%3B+margin-bottom%3A+20px%3B%22%3E%0A++++++++%3Ca+class%3D%22me-email-link%22+style%3D%22text-decoration%3A+none%3Bcolor%3A+%236264a7%3B%22+href%3D%22https%3A%2F%2Fdialin.abcd.vc%2Fteams%2F%3Fkey%3D000000000%26conf%3D0180308922%22%3E%E4%BB%A3%E6%9B%BF+VTC+%E3%81%AE%E3%83%80%E3%82%A4%E3%83%A4%E3%83%AB%E6%96%B9%E6%B3%95%3C%2Fa%3E%0A++++++++%3C%2Fdiv%3E%0A++++%0A+++++%0A++++++%3Cdiv+style%3D%22font-size%3A+14px%3B+margin-bottom%3A+4px%3B%22%3E%0A++++++++%0A++++++%3C%2Fdiv%3E%0A++++++%3Cdiv+style%3D%22font-size%3A+12px%3B%22%3E%0A++++++%0A++++++%3C%2Fdiv%3E%0A++++%0A+++++%3C%2Fdiv%3E%0A%09+%3Cdiv+style%3D%22width%3A100%25%3Bheight%3A+20px%3B%22%3E%0A%09%09%3Cspan+style%3D%22white-space%3Anowrap%3Bcolor%3Agray%3Bopacity%3A.36%3B%22%3E________________________________________________________________________________%3C%2Fspan%3E%0A++%3C%2Fdiv%3E%22%2C%0A",
        "contentType": "Html"
    }  
```

### Example 2: Retrieve an online meeting by meeting ID
You can retrieve meeting information via meeting ID with either a user or application token. The meeting ID is provided in the response object when creating an [onlineMeeting](../resources/onlinemeeting.md). This option is available to support use cases where the meeting ID is known, such as when an application first creates the online meeting using Graph API first then retrieves meeting information later as a separate action.

#### Request

The following example shows a request.

> **Note:** The meeting ID has been truncated for readability.

The following request uses a user token.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy
```

The following request uses an app token.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/dc17674c-81d9-4adb-bfb2-8f6a442e4622/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. 

```json
{
    "id": "MSpkYzE3Njc0Yy04MWQ5L1F6WGhyZWFkLnYy",
    "creationDateTime": "2020-09-29T22:35:33.1594516Z",
    "startDateTime": "2020-09-29T22:35:31.389759Z",
    "endDateTime": "2020-09-29T23:35:31.389759Z",
    "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_MGQ4YxODYzMmY2%40thread.v2/0?context=%7b%22Tid%22%3a%22c581-5130-43e9-88f3-fc82cde37%22%2c%22Oid%22%3a%22674c-81d9-4adb-bb2-8f62e4622%22%7d",
    "subject": null,
    "autoAdmittedUsers": "EveryoneInCompany",
    "isEntryExitAnnounced": true,
    "allowedPresenters": "everyone",
    "allowMeetingChat": "enabled",
    "allowTeamworkReactions": true,
    "videoTeleconferenceId": "(redacted)",
    "participants": {
        "organizer": {
            "upn": "(redacted)",
            "role": "presenter",
            "identity": {
                "user": {
                    "id": "dc174c-81d9-4adb-bfb2-8f4622",
                    "displayName": null,
                    "tenantId": "9081-5130-43e9-88f3-fcde38",
                    "identityProvider": "AAD"
                }
            }
        },
        "attendees": [],
        "producers": [],
        "contributors": []
    },
    "lobbyBypassSettings": {
        "scope": "organization",
        "isDialInBypassEnabled": false
    },
    "joinMeetingIdSettings": {
        "isPasscodeRequired": false,
        "joinMeetingId": "1234567890",
        "passcode": null
    }
}
```

### Example 3: Retrieve an online meeting by joinWebUrl
You can retrieve meeting information via JoinWebUrl by using either a user or application token. This option is available to support use cases where the meeting ID isn't known but the JoinWebUrl is, such as when a user creates a meeting (for example in the Microsoft Teams client), and a separate application needs to retrieve meeting details as a follow-up action.

#### Request

The following example shows a request.

The following request uses a user token.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/me/onlineMeetings?$filter=JoinWebUrl%20eq%20'https%3A%2F%2Fteams.microsoft.com%2Fl%2Fmeetup-join%2F19%253ameeting_MGQ4MDQyNTEtNTQ2NS00YjQxLTlkM2EtZWVkODYxODYzMmY2%2540thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%2522909c6581-5130-43e9-88f3-fcb3582cde37%2522%252c%2522Oid%2522%253a%2522dc17674c-81d9-4adb-bfb2-8f6a442e4622%2522%257d'
```

The following request uses an app token.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/dc17674c-81d9-4adb-bfb2-8f6a442e4622/onlineMeetings?$filter=JoinWebUrl%20eq%20'https%3A%2F%2Fteams.microsoft.com%2Fl%2Fmeetup-join%2F19%253ameeting_MGQ4MDQyNTEtNTQ2NS00YjQxLTlkM2EtZWVkODYxODYzMmY2%2540thread.v2%2F0%3Fcontext%3D%257b%2522Tid%2522%253a%2522909c6581-5130-43e9-88f3-fcb3582cde37%2522%252c%2522Oid%2522%253a%2522dc17674c-81d9-4adb-bfb2-8f6a442e4622%2522%257d'
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability. 

```json
{
    "value": [
        {
            "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4622_19:meeting_MGQ4MDQyEtZWVkODYxODYzMmY2@thread.v2",
            "creationDateTime": "2020-09-29T22:35:33.1594516Z",
            "startDateTime": "2020-09-29T22:35:31.389759Z",
            "endDateTime": "2020-09-29T23:35:31.389759Z",
            "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_MGQ4MDQyNTEtNTQ2N2%40thread.v2/0?context=%7b%22Tid%22%3a%229581-5130-43e9-8f3-fcb35e37%22%2c%22Oid%22%3a%22dc17674c-81d9-4adb-bfb2-8f6a442e4622%22%7d",
            "subject": null,
            "autoAdmittedUsers": "EveryoneInCompany",
            "isEntryExitAnnounced": true,
            "allowedPresenters": "everyone",
            "allowMeetingChat": "enabled",
            "allowTeamworkReactions": true,
            "videoTeleconferenceId": "(redacted)",
            "participants": {
                "organizer": {
                    "upn": "(redacted)",
                    "role": "presenter",
                    "identity": {
                        "user": {
                            "id": "dc4c-81d9-4adb-bfb2-8f4622",
                            "displayName": null,
                            "tenantId": "9091-5130-43e9-88f3-fcbe38",
                            "identityProvider": "AAD"
                        }
                    }
                },
                "attendees": [],
                "producers": [],
                "contributors": []
            },
            "lobbyBypassSettings": {
                "scope": "organization",
                "isDialInBypassEnabled": false
            },
            "joinMeetingIdSettings": {
                "isPasscodeRequired": false,
                "joinMeetingId": "1234567890",
                "passcode": null
            }
        }
    ]
}
```

### Example 4: Retrieve an online meeting by joinMeetingId

You can retrieve meeting information via the **joinMeetingId** by using either a user or an application token.

#### Request

The following example shows a request that uses a user (delegated) token.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-an-online-meeting-by-joinmeetingid"
} -->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'1234567890'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-an-online-meeting-by-joinmeetingid-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-an-online-meeting-by-joinmeetingid-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-an-online-meeting-by-joinmeetingid-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-an-online-meeting-by-joinmeetingid-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-an-online-meeting-by-joinmeetingid-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-an-online-meeting-by-joinmeetingid-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-an-online-meeting-by-joinmeetingid-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-an-online-meeting-by-joinmeetingid-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following request uses an app token.
<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/dc17674c-81d9-4adb-bfb2-8f6a442e4622/onlineMeetings?$filter=joinMeetingIdSettings/joinMeetingId%20eq%20'1234567890'
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onlineMeeting"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4622_19:meeting_MGQ4MDQyNTLTlkM2EtZWVkODYxODYzMmY2@thread.v2",
            "creationDateTime": "2020-09-29T22:35:33.1594516Z",
            "startDateTime": "2020-09-29T22:35:31.389759Z",
            "endDateTime": "2020-09-29T23:35:31.389759Z",
            "joinWebUrl": "https://teams.microsoft.com/l/meetup-join/19%3ameeting_MGQ4MDQyNTEtNTM2EtZWVkODYxODYzMmY2%40thread.v2/0?context=%7b%22Tid%22%3a%22909c6581-5130-43e9-88f3-fcb3582cde37%22%2c%22Oid%22%3a%22dc17674c-81d9-4adb-bfb2-8f6a442e4622%22%7d",
            "subject": null,
            "autoAdmittedUsers": "EveryoneInCompany",
            "isEntryExitAnnounced": true,
            "allowedPresenters": "everyone",
            "allowMeetingChat": "enabled",
            "allowTeamworkReactions": true,
            "videoTeleconferenceId": "(redacted)",
            "participants": {
                "organizer": {
                    "upn": "(redacted)",
                    "role": "presenter",
                    "identity": {
                        "user": {
                            "id": "dc174c-81d9-4adb-bfb2-8f6622",
                            "displayName": null,
                            "tenantId": "9091-5130-43e9-88f3-fce38",
                            "identityProvider": "AAD"
                        }
                    }
                },
                "attendees": [],
                "producers": [],
                "contributors": []
            },
            "lobbyBypassSettings": {
                "scope": "organization",
                "isDialInBypassEnabled": false
            },
            "joinMeetingIdSettings": {
                "isPasscodeRequired": false,
                "joinMeetingId": "1234567890",
                "passcode": null
            }
        }
    ]
}
```

### Example 5: Fetch the attendee report of a Teams live event (deprecated)

The following example shows a request to download an attendee report.

#### Request

The following request uses delegated permission.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_attendee_report",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/attendeeReport
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-attendee-report-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-attendee-report-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-attendee-report-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-attendee-report-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-attendee-report-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-attendee-report-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-attendee-report-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-attendee-report-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following request uses application permission.

<!-- { "blockType": "ignored" }-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/attendeeReport
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_attendee_report"
} -->

```http
HTTP/1.1 302 Found
Location: https://01-a-noam.dog.attend.teams.microsoft.com/broadcast/909c6581-5130-43e9-88f3-fcb3582cde37/dc17674c-81d9-4adb-bfb2-8f6a442e4622/19%3Ameeting_ZWE0YzQwMzItYjEyNi00NjJjLWE4MjYtOTUxYjE1NmFjYWIw%40thread.v2/0/resource/attendeeReport
```

### Example 6: Fetch the recording of a Teams live event (deprecated)

The following example shows a request to download a recording.

#### Request

The following request uses delegated permission.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_live_event_recording",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/recording
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-live-event-recording-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-live-event-recording-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-live-event-recording-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-live-event-recording-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-live-event-recording-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-live-event-recording-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-live-event-recording-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-live-event-recording-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following request uses application permission.
<!-- { "blockType": "ignored" }-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/recording
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_live_event_recording"
} -->

```http
HTTP/1.1 302 Found
Location: https://01-a-noam.dog.attend.teams.microsoft.com/broadcast/909c6581-5130-43e9-88f3-fcb3582cde37/dc17674c-81d9-4adb-bfb2-8f6a442e4622/19%3Ameeting_ZWE0YzQwMzItYjEyNi00NjJjLWE4MjYtOTUxYjE1NmFjYWIw%40thread.v2/0/resource/recording
```
