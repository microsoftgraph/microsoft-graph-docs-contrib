---
title: "List meetingAttendanceReports"
description: "Get a list of attendance reports for an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 05/17/2024
---

# List meetingAttendanceReports

Namespace: microsoft.graph

Get a list of [meetingAttendanceReport](../resources/meetingattendancereport.md) objects for an [onlineMeeting](../resources/onlinemeeting.md) or a [virtualEvent](../resources/virtualevent.md). Each time an online meeting or a virtual event ends, an attendance report is generated for that session.

> [!WARNING]
>
>- This method only returns up to 50 of the most recent reports.
>- When you use this method to list attendance reports for a channel meeting, the API returns attendance reports for every meeting in the channel, rather than just the attendance reports for the specified meeting, which is the expected behavior for scheduled meetings. This behavior is the same regardless of where the channel meeting was created.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "meetingattendancereport_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/meetingattendancereport-list-permissions.md)]

To use application permission for this API, tenant administrators must create an application access policy and grant it to a user. This authorizes the app configured in the policy to fetch online meetings and/or online meeting artifacts on behalf of that user (with the user ID specified in the request path). For more details, see [Allow applications to access online meetings on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

To get all attendance reports for an online meeting with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" } -->
```http
GET /me/onlineMeetings/{meetingId}/attendanceReports
GET /users/{userId}/onlineMeetings/{meetingId}/attendanceReports
```

To get all attendance reports for a webinar session with delegated and app permission:
<!-- { "blockType": "ignored" } -->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports
```

To get all attendance reports for a town hall session using delegated and application permissions:
<!-- { "blockType": "ignored" } -->
``` http
GET /solutions/virtualEvents/townhalls/{townhallId}/sessions/{sessionId}/attendanceReports
```

> [!TIP]
>
>- **userId** is the object ID of a user in [Microsoft Entra admin center > user management page](https://entra.microsoft.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [application access policy](/graph/cloud-communication-online-meeting-application-access-policy).
>- `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.
>- `webinarId` is the **id** of a [virtualEventWebinar](../resources/virtualeventwebinar.md) object.
>- `sessionId` is the **id** of a [virtualEventSession](../resources/virtualeventsession.md) object.
>- `townhallId` is the **id** of a [virtualEventTownhall](../resources/virtualeventtownhall.md) object.

## Optional query parameters

This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [meetingAttendanceReport](../resources/meetingAttendanceReport.md) objects in the response body.

> [!TIP]
> The **attendanceRecords** property is empty in the response.
> If your scenario needs **externalEventInformation**, you must make an explicit call to the [Get meetingAttendanceReport](../api/meetingattendancereport-get.md) API. This data isn't returned by default when you query the virtual event or online meeting object.

## Example

### Example 1: List attendance reports for an online meeting

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-attendanceReports",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ/attendanceReports
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-attendancereports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-attendancereports-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-attendancereports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-attendancereports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-attendancereports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-attendancereports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-attendancereports-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-attendancereports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

> **Note**: The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get-attendanceReports",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingAttendanceReport",
  "isCollection": true
}-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('16664f75-11dc-4870-bec6-38c1aaa81431')/onlineMeetings('MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZ')/attendanceReports",
  "value": [
    {
      "id": "c9b6db1c-d5eb-427d-a5c0-20088d9b22d7",
      "totalParticipantCount": 1,
      "meetingStartDateTime": "2021-10-05T04:38:23.945Z",
      "meetingEndDateTime": "2021-10-05T04:43:49.77Z",
      "attendanceRecords": []
    },
    {
      "id": "2c2c2454-7613-4d6e-9c7c-4cf7a6cdce89",
      "totalParticipantCount": 2,
      "meetingStartDateTime": "2021-10-04T23:13:31.658Z",
      "meetingEndDateTime": "2021-10-04T23:18:57.563Z",
      "attendanceRecords": []
    }
  ]
}
```

### Example 2: List attendance reports for a webinar session

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_virtualevent_attendancereport"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/webinars/f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd/sessions/8d62dd52-4dff-4c75-96a9-f905cc3ff942/attendanceReports
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-virtualevent-attendancereport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-virtualevent-attendancereport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-virtualevent-attendancereport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-virtualevent-attendancereport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-virtualevent-attendancereport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-virtualevent-attendancereport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-virtualevent-attendancereport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-virtualevent-attendancereport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.meetingAttendanceReport)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/virtualEvents/webinars('f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd')/sessions('8d62dd52-4dff-4c75-96a9-f905cc3ff942')/attendanceReports/$entity",
  "value": [
    {
      "id": "c9b6db1c-d5eb-427d-a5c0-2022d7",
      "totalParticipantCount": 1,
      "meetingStartDateTime": "2021-10-05T04:38:23.945Z",
      "meetingEndDateTime": "2021-10-05T04:43:49.77Z"
    },
    {
      "id": "2c2c2454-7613-4d6e-9c7c-4ce89",
      "totalParticipantCount": 2,
      "meetingStartDateTime": "2021-10-04T23:13:31.658Z",
      "meetingEndDateTime": "2021-10-04T23:18:57.563Z"
    }
  ]
}
```

### Example 3: List attendance reports for a town hall session

The following example shows how to list attendance reports for a town hall session.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_virtualevent_attendancereport_townhall",
  "sampleKeys": ["f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd", "8d62dd52-4dff-4c75-96a9-f905cc3ff942"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/townhalls/f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd/sessions/8d62dd52-4dff-4c75-96a9-f905cc3ff942/attendanceReports
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-virtualevent-attendancereport-townhall-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-virtualevent-attendancereport-townhall-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-virtualevent-attendancereport-townhall-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-virtualevent-attendancereport-townhall-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-virtualevent-attendancereport-townhall-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-virtualevent-attendancereport-townhall-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-virtualevent-attendancereport-townhall-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-virtualevent-attendancereport-townhall-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.meetingAttendanceReport)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#solutions/virtualEvents/townhalls('f8ce2a5f-0e6a-4186-aa90-1f64bc023566@5466a424-aadf-425c-9b24-034ca28d4bdd')/sessions('8d62dd52-4dff-4c75-96a9-f905cc3ff942')/attendanceReports/$entity",
  "value": [
    {
      "id": "c9b6db1c-d5eb-427d-a5c0-2022d7",
      "totalParticipantCount": 1,
      "meetingStartDateTime": "2021-10-05T04:38:23.945Z",
      "meetingEndDateTime": "2021-10-05T04:43:49.77Z"
    },
    {
      "id": "2c2c2454-7613-4d6e-9c7c-4ce89",
      "totalParticipantCount": 2,
      "meetingStartDateTime": "2021-10-04T23:13:31.658Z",
      "meetingEndDateTime": "2021-10-04T23:18:57.563Z"
    }
  ]
}
```

