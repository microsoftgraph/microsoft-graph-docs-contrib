---
title: "Get meetingAttendanceReport"
description: "Get the attendance report for an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get meetingAttendanceReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [meetingAttendanceReport](../resources/meetingAttendanceReport.md) for an [onlineMeeting](../resources/onlinemeeting.md). Each time an online meeting ends, an attendance report will be generated for that session.

> [!WARNING]
> This method does not support channel meetings.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions (from least to most privileged) |
|:----------------|:--------------------------------------------|
| Delegated (work or school account) | OnlineMeetingArtifact.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | OnlineMeetingArtifact.Read.All |

To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

To get an attendance report by ID with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/attendanceReports/{reportId}
GET /users/{userId}/onlineMeetings/{meetingId}/attendanceReports/{reportId}
```

To get the attendance report of the latest session of an online meeting with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" }-->
```http
GET /me/onlineMeetings/{meetingId}/meetingAttendanceReport
GET /users/{userId}/onlineMeetings/{meetingId}/meetingAttendanceReport
```

> [!TIP]
>
>- `userId` is the object ID of a user in [Azure user management portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).
>- `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.
>- `reportId` is the **id** of an [meetingAttendanceReport](../resources/meetingAttendanceReport.md) object.

> [!CAUTION]
>
>- The `/meetingAttendanceReport` path is deprecated. Going forward, use the `/attendanceReports` path to retrieve attendance reports for an online meeting.
>- The `/meetingAttendanceReport` path will remain in beta for backward compatibility. However, to get the same response, you need to add the `expand` query option. For details, see the [Optional query parameters](#optional-query-parameters) section.
>- The **attendanceRecords** property does not return information about a breakout room.

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

> [!TIP]
> The **attendanceRecords** property is a navigation property that is not returned by default. To retrieve **attendanceRecords** in line, use the `$expand=attendanceRecords` query option, as shown in [example 2](#example-2-get-the-latest-attendance-report-for-an-online-meeting).

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [meetingAttendanceReport](../resources/meetingAttendanceReport.md) object in the response body.

## Example

### Example 1: Get the attendance report for an online meeting by ID

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-attendanceReport-by-id",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ", "2c2c2454-7613-4d6e-9c7c-4cf7a6cdce89"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/attendanceReports/2c2c2454-7613-4d6e-9c7c-4cf7a6cdce89?$expand=attendanceRecords
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-attendancereport-by-id-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-attendancereport-by-id-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-attendancereport-by-id-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-attendancereport-by-id-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-attendancereport-by-id-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-attendancereport-by-id-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get-attendanceReport-by-id",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingAttendanceReport"
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/attendanceReports('c9b6db1c-d5eb-427d-a5c0-20088d9b22d7')",
  "id": "c9b6db1c-d5eb-427d-a5c0-20088d9b22d7",
  "totalParticipantCount": 1,
  "meetingStartDateTime": "2021-10-05T04:38:23.945Z",
  "meetingEndDateTime": "2021-10-05T04:43:49.77Z",
  "attendanceRecords": [
    {
      "emailAddress": "(email address)",
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
  ]
}
```

### Example 2: Get the latest attendance report for an online meeting

The following example shows a request to get a meeting attendance report for the latest session of an online meeting.

#### Request

The following request uses delegated permission.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_attendance_report",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/meetingAttendanceReport
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-attendance-report-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-attendance-report-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-attendance-report-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-attendance-report-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-attendance-report-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The following request uses application permission.
<!-- { "blockType": "ignored" }-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/dc74d9bb-6afe-433d-8eaa-e39d80d3a647/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZiMi04ZdFpHRTNaR1F6WGhyZWFkLnYy/meetingAttendanceReport
```

#### Response

> **Note:** The response object shown here might be shortened for readability. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingAttendanceReport",
  "name": "get_attendance_report"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

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
