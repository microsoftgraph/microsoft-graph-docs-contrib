---
title: "Get meetingAttendanceReport"
description: "Get the attendance report for an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 07/02/2024
---

# Get meetingAttendanceReport

Namespace: microsoft.graph

Get the [meetingAttendanceReport](../resources/meetingattendancereport.md) for an [onlineMeeting](../resources/onlinemeeting.md) or a [virtualEvent](../resources/virtualevent.md). When an online meeting ends, an attendance report is generated for that session.

> [!WARNING]
> This method doesn't support channel meetings.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "meetingattendancereport_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/meetingattendancereport-get-permissions.md)]

To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. Granting an application access policy to the user authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

To get an attendance report by ID with delegated (`/me`) and app (`/users/{userId}`) permission:

<!-- { "blockType": "ignored" } -->

```http
GET /me/onlineMeetings/{meetingId}/attendanceReports/{reportId}
GET /users/{userId}/onlineMeetings/{meetingId}/attendanceReports/{reportId}
```

To get an attendance report for a webinar session by ID with delegated and app permission:
<!-- { "blockType": "ignored" }-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports/{reportId}
```

To get an attendance report by ID for a town hall session using delegated and application permissions:
<!-- { "blockType": "ignored" }-->
``` http
GET /solutions/virtualEvents/townhalls/{townhallId}/sessions/{sessionId}/attendanceReports/{reportId}
```

> [!TIP]
>
>- **userId** is the object ID of a user in [Microsoft Entra admin center > user management page](https://entra.microsoft.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more information, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).
>- `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.
>- `reportId` is the **id** of a [meetingAttendanceReport](../resources/meetingattendancereport.md) object.
>- `webinarId` is the **id** of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.
>- `sessionId` is the **id** of a [virtualEventSession](../resources/virtualeventsession.md) object.
>- `townhallId` is the **id** of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.
>- Only the webinar or townhall organizer or coorganizer can access this API.

> [!CAUTION]
>
>- The `/meetingAttendanceReport` path is deprecated. Going forward, use the `/attendanceReports` path to retrieve attendance reports for an online meeting.
>- The **attendanceRecords** property doesn't return information about a breakout room.

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

> [!TIP]
> The **attendanceRecords** property provides participant data. It is a navigation property that isn't returned by default. To retrieve **attendanceRecords**, use the [List attendance records](attendancerecord-list.md) API. To retrieve **attendanceRecords** in line, use the `$expand=attendanceRecords` query option, as shown in [example 1](#example-1-get-the-attendance-report-with-attendance-records-for-an-online-meeting-by-id).

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [meetingAttendanceReport](../resources/meetingattendancereport.md) object in the response body.

## Examples

### Example 1: Get the attendance report with attendance records for an online meeting by ID

The following example shows how to get the attendance report for an online meeting with delegated permission.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-attendanceReport-by-id",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ", "c9b6db1c-d5eb-427d-a5c0-20088d9b22d7"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/attendanceReports/c9b6db1c-d5eb-427d-a5c0-20088d9b22d7?$expand=attendanceRecords
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-attendancereport-by-id-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-attendancereport-by-id-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-attendancereport-by-id-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/attendanceReports('c9b6db1c-d5eb-427d-a5c0-20088d9b22d7')",
  "id": "c9b6db1c-d5eb-427d-a5c0-20088d9b22d7",
  "totalParticipantCount": 1,
  "meetingStartDateTime": "2021-10-05T04:38:23.945Z",
  "meetingEndDateTime": "2021-10-05T04:43:49.77Z",
  "attendanceRecords": [
    {
      "emailAddress": "frederick.cormier@contoso.com",
      "totalAttendanceInSeconds": 1152,
      "role": "Presenter",
      "identity": {
        "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4623",
        "displayName": "Frederick Cormier",
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

### Example 2: Get the attendance report for a webinar session by ID

The following example shows how to get the attendance report for a webinar session based on its **id**.

> [!TIP]
> The **attendanceRecords** property provides participant data. It is a navigation property that isn't returned by default. To retrieve **attendanceRecords**, use the [List attendance records](attendancerecord-list.md) API. Alternatively to retrieve **attendanceRecords** in line, use the `$expand=attendanceRecords` query option, as shown in [example 1](#example-1-get-the-attendance-report-with-attendance-records-for-an-online-meeting-by-id).

#### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "get_virtualeventattendancereport",
  "sampleKeys": ["f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd", "8d62dd52-4dff-4c75-96a9-f905cc3ff942", "b76965d4-0763-496e-9980-b323c5f3aa3b"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd/sessions/8d62dd52-4dff-4c75-96a9-f905cc3ff942/attendanceReports/b76965d4-0763-496e-9980-b323c5f3aa3b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-virtualeventattendancereport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-virtualeventattendancereport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-virtualeventattendancereport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualeventattendancereport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualeventattendancereport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-virtualeventattendancereport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-virtualeventattendancereport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-virtualeventattendancereport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingAttendanceReport"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/virtualEvents/webinars('f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd')/sessions('8d62dd52-4dff-4c75-96a9-f905cc3ff942')/attendanceReports('b76965d4-0763-496e-9980-b323c5f3aa3b')",
  "id": "b76965d4-0763-496e-9980-b323c5f3aa3b",
  "totalParticipantCount": 2,
  "meetingStartDateTime": "2021-10-04T23:13:31.658Z",
  "meetingEndDateTime": "2021-10-04T23:18:57.563Z",
  "externalEventInformation": [
    {
      "applicationId": "67a527ba-ef0e-4ba2-88b6-4fa5e9711757",
      "externalEventId": "myExternalEventId"
    }
  ]
}
```

### Example 3: Get the attendance report for a town hall session by ID

The following example shows how to get the attendance report for a town hall session based on its **id**.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_meetingattendancereport_townhall",
  "sampleKeys": ["f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd", "8d62dd52-4dff-4c75-96a9-f905cc3ff942", "b76965d4-0763-496e-9980-b323c5f3aa3b"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd/sessions/8d62dd52-4dff-4c75-96a9-f905cc3ff942/attendanceReports/b76965d4-0763-496e-9980-b323c5f3aa3b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-meetingattendancereport-townhall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-meetingattendancereport-townhall-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-meetingattendancereport-townhall-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-meetingattendancereport-townhall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-meetingattendancereport-townhall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-meetingattendancereport-townhall-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-meetingattendancereport-townhall-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-meetingattendancereport-townhall-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingAttendanceReport"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/virtualEvents/townhalls('f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd')/sessions('8d62dd52-4dff-4c75-96a9-f905cc3ff942')/attendanceReports('b76965d4-0763-496e-9980-b323c5f3aa3b')",
  "id": "b76965d4-0763-496e-9980-b323c5f3aa3b",
  "totalParticipantCount": 2,
  "meetingStartDateTime": "2021-10-04T23:13:31.658Z",
  "meetingEndDateTime": "2021-10-04T23:18:57.563Z",
  "externalEventInformation": [
    {
      "applicationId": "67a527ba-ef0e-4ba2-88b6-4fa5e9711757",
      "externalEventId": "myExternalEventId"
    }
  ]
}
```


