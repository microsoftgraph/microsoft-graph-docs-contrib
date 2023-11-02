---
title: "List attendanceReports"
description: "Get the meetingAttendanceReport resources from the attendanceReports navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# List attendanceReports
Namespace: microsoft.graph



Get the meetingAttendanceReport resources from the attendanceReports navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "virtualeventsession-list-attendancereports-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/virtualeventsession-list-attendancereports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/virtualEvents/events/{virtualEventId}/sessions/{virtualEventSessionId}/attendanceReports
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [meetingAttendanceReport](../resources/meetingattendancereport.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_meetingattendancereport"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/solutions/virtualEvents/events/{virtualEventId}/sessions/{virtualEventSessionId}/attendanceReports
```


### Response
The following is an example of the response
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.meetingAttendanceReport",
      "id": "382fcbd0-6a2a-4627-d2cd-25ac46caa238",
      "totalParticipantCount": "Integer",
      "meetingStartDateTime": "String (timestamp)",
      "meetingEndDateTime": "String (timestamp)"
    }
  ]
}
```

