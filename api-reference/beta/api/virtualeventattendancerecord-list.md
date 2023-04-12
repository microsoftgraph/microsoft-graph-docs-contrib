---
title: "List virtualEvent Attendance Records"
description: "Get a list of attendanceRecord objects and their properties."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# List VirtualEvent Attendance Records
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [attendanceRecord](../resources/attendancerecord.md) objects and their properties.

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

To get attendance records of an attendance report:

``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports/{reportId}/attendanceRecords
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

If successful, this method returns a `200 OK` response code and a collection of [attendanceRecord](../resources/attendancerecord.md) objects in the response body.

## Example

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_virtualeventsession"
}
-->
``` http
GET /solutions/virtualEvents/webinars/{webinarId}/sessions/{sessionId}/attendanceReports/{reportId}/attendancerecords
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.attendanceRecord)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/virtualEvents/webinars('336f94f4-3a81-5130-43e9-88f3-fcb3582cde37')/sessions('a0f934c324b7785c')/attendanceReports('2c2454-7613-4d6e-9c7c-4c8')/attendancerecords",
   "value": [
    {
      "emailAddress": "frederick.cormier@contoso.com",
      "totalAttendanceInSeconds": 322,
      "role": "Organizer",
      "registrantId": null,
      "identity": {
        "id": "dc17674c-81d9-4adb-bfb2-8f6a442e4623",
        "displayName": "Frederick Cormier",
        "tenantId": null
      },
      "attendanceIntervals": [
        {
          "joinDateTime": "2021-10-05T04:38:27.6027225Z",
          "leaveDateTime": "2021-10-05T04:43:49.7702391Z",
          "durationInSeconds": 322
        }
      ]
    },
    {
      "emailAddress": "lisa.adkins@contoso.com",
      "totalAttendanceInSeconds": 314,
      "role": "Presenter",
      "registrantId": null,
      "identity": {
        "id": "57caaef9-5ed0-48d5-8862-e5abfa71b3e9",
        "displayName": "Lisa Adkins",
        "tenantId": null
      },
      "attendanceIntervals": [
        {
          "joinDateTime": "2021-10-04T23:13:43.3776519Z",
          "leaveDateTime": "2021-10-04T23:18:57.5639338Z",
          "durationInSeconds": 314
        }
      ]
    }
  ]
}
```
