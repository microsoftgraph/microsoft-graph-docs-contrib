---
title: "Get virtualEvent Attendance Report"
description: "Get the attendance report object for a virtual event session."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get VirtualEvent Attendance Report
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [AttendanceReport](../resources/meetingattendancereport.md) object for a [virtualEventSession](../resources/virtualeventsession.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference). Meeting attendance reports are online meeting artifacts. For details, see [Online meeting artifacts and permissions](/graph/cloud-communications-online-meeting-artifacts).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|VirtualEvent.Read|
|Delegated (personal Microsoft account)|Not supported.|
|Application|VirtualEvent.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To get an attendance report by ID:

``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports/{reportId}
```

## Optional query parameters

This method does not support the OData query parameters. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [AttendanceReport](../resources/meetingattendancereport.md) object in the response body.

## Example

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventattendancereport"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports/{reportId}
```

### Response

The following is an example of the response
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/virtualEvents/webinars('336f94f4-3a81-5130-43e9-88f3-fcb3582cde37')/sessions('a0f934c324b7785c')/attendanceReports/$entity",
  "id": "2c2c2454-7613-4d6e-9c7c-4c89",
  "totalParticipantCount": 2,
  "meetingStartDateTime": "2021-10-04T23:13:31.658Z",
  "meetingEndDateTime": "2021-10-04T23:18:57.563Z"
}
```
