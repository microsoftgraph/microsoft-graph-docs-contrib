---
title: "Get meeting artifact"
description: "Get online meeting artifacts."
author: "mkhribech"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
ms.date: "09/20/2021"
doc_type: apiPageType
---

# Get meeting artifact

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Meeting artifacts are content produced for the duration of an online meeting or live event. The following meeting artifacts that can be fetched with this API:

1. Attendance report of an online meeting, in the form of a JSON response, as shown in [example 1](#example-1-get-attendance-report-of-an-online-meeting).
2. Recordings of a live event, in the form of a download link, as shown in [example 2](#example-2-get-attendee-report-of-a-live-event).
3. Attendee report of a live event, in the form of a download link, as shown in [example 3](#example-3-get-recording-of-a-live-event).

> [!NOTE]
>
>- Meeting attendance reports are available for meetings other than live events, and are only available when the meeting has concluded. Only the meeting organizer can access meeting attendance reports.
>- Recordings and attendee reports are only available for live events, and are only available when the live event has concluded. Only the live event organizer can access attendee reports and recordings.
>- The download links for the live event attendee report and recordings expire in 60 seconds.

## Permissions

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | OnlineMeetingArtifact.Read.All              |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | OnlineMeetingArtifact.Read.All              |

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to get online meeting artifacts on behalf of that user (with user ID specified in the request path).

> [!CAUTION]
> To keep API consistency, you can still use the following permissions until **January 15, 2022** to get meeting artifacts:
>
>- _OnlineMeeting.Read_
>- _OnlineMeeting.ReadWrite_
>- _OnlineMeeting.Read.All_
>- _OnlineMeeting.ReadWrite.All_
>
> After that, the _OnlineMeetingArtifact.Read.All_ permission will be required to get meeting artifacts and requests without it will be forbidden.

## HTTP request

To get the attendance report of an online meeting with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" }-->

```http
GET /me/onlineMeetings/{meetingId}/meetingAttendanceReport
GET /users/{userId}/onlineMeetings/{meetingId}/meetingAttendanceReport
```

To get the attendee report of a live event with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" }-->

```http
GET /me/onlineMeetings/{meetingId}/attendeeReport
GET /users/{userId}/onlineMeetings/{meetingId}/attendeeReport
```

To get the recordings of a live event with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" }-->

```http
GET /me/onlineMeetings/{meetingId}/recording
GET /me/onlineMeetings/{meetingId}/alternativeRecording
GET /users/{userId}/onlineMeetings/{meetingId}/recording
GET /users/{userId}/onlineMeetings/{meetingId}/alternativeRecording
```

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code. The response also includes one of the following:

- If you fetch an attendance report of an online meeting, this method returns a [meetingAttendanceReport](../resources/meetingAttendanceReport.md) object in the response body.
- If you fetch an attendee report or recording of a live event, this method returns a `Location` header that indicates the URI to the attendee report or recording, respectively.

## Examples

### Example 1: Get attendance report of an online meeting

The following example shows a request to get a meeting attendance report.

#### Request

The following request uses delegated permission.
<!-- {
  "blockType": "request",
  "name": "get_attendance_report"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/meetingAttendanceReport
```

The following request uses application permission.
<!-- { "blockType": "ignored" }-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/meetingAttendanceReport
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingAttendanceReport",
  "name": "get_attendance_report"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1876

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('dc74d9bb-6afe-433d-8eaa-e39d80d3a647')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy')/meetingAttendanceReport/$entity",
    "attendanceRecords": [
        {
            "emailAddress": "email address",
            "totalAttendanceInSeconds": 1558,
            "role": "Organizer",
            "identity": {
                "id": "dc74d9bb-6afe-433d-8eaa-e39d80d3a647",
                "displayName": "(redacted)",
                "tenantId": null
            },
            "attendanceIntervals": [
                {
                    "joinDateTime": "2021-03-16T18:59:46.598956Z",
                    "leaveDateTime": "2021-03-16T19:25:45.4473057Z",
                    "durationInSeconds": 1558
                }
            ]
        },
        {
            "emailAddress": "email address",
            "totalAttendanceInSeconds": 1152,
            "role": "Presenter",
            "identity": {
                "id": "(redacted)",
                "displayName": "(redacted)",
                "tenantId": null
            },
            "attendanceIntervals": [
                {
                    "joinDateTime": "2021-03-16T18:59:52.2782182Z",
                    "leaveDateTime": "2021-03-16T19:06:47.7218491Z",
                    "durationInSeconds": 415
                },
                {
                    "joinDateTime": "2021-03-16T19:09:23.9834702Z",
                    "leaveDateTime": "2021-03-16T19:16:31.1381195Z",
                    "durationInSeconds": 427
                },
                {
                    "joinDateTime": "2021-03-16T19:20:27.7094382Z",
                    "leaveDateTime": "2021-03-16T19:25:37.7121956Z",
                    "durationInSeconds": 310
                }
            ]
        }
    ],
    "totalParticipantCount": 2
}
```

### Example 2: Get attendee report of a live event

The following example shows a request to download an attendee report.

#### Request

The following request uses delegated permission.
<!-- {
  "blockType": "request",
  "name": "get_attendee_report"
}-->

```http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/attendeeReport
```

The following request uses application permission.

<!-- { "blockType": "ignored" }-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/attendeeReport
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_attendee_report"
} -->

```http
HTTP/1.1 302 Found
Location: https://01-a-noam.dog.attend.teams.microsoft.com/broadcast/909c6581-5130-43e9-88f3-fcb3582cde37/dc17674c-81d9-4adb-bfb2-8f6a442e4622/19%3Ameeting_ZWE0YzQwMzItYjEyNi00NjJjLWE4MjYtOTUxYjE1NmFjYWIw%40thread.v2/0/resource/attendeeReport
```

### Example 3: Get recording of a live event

The following example shows a request to download a recording.

#### Request

The following request uses delegated permission.
<!-- {
  "blockType": "request",
  "name": "get_live_event_recording"
}-->
```http
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/recording
```

The following request uses application permission.
<!-- { "blockType": "ignored" }-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/recording
```

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_live_event_recording"
} -->

```http
HTTP/1.1 302 Found
Location: https://01-a-noam.dog.attend.teams.microsoft.com/broadcast/909c6581-5130-43e9-88f3-fcb3582cde37/dc17674c-81d9-4adb-bfb2-8f6a442e4622/19%3Ameeting_ZWE0YzQwMzItYjEyNi00NjJjLWE4MjYtOTUxYjE1NmFjYWIw%40thread.v2/0/resource/recording
```
