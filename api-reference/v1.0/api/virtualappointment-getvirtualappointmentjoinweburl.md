---
title: "virtualAppointment: getVirtualAppointmentJoinWebUrl"
description: "Get a virtual appointment join link."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# virtualAppointment: getVirtualAppointmentJoinWebUrl

Namespace: microsoft.graph

Get a join web URL for a [Microsoft Virtual Appointments](/microsoft-365/frontline/virtual-appointments). This web URL includes enhanced business-to-customer experiences such as mobile browser join and virtual lobby rooms. With [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams), you can configure a [custom lobby room](/microsoft-365/frontline/browser-join#customize-the-waiting-room-with-your-company-logo) experience for attendees by adding your company logo and access the [Virtual Appointments usage report](/microsoft-365/frontline/virtual-appointments-usage-report) in the Microsoft Teams admin center.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                   |
|:---------------------------------------|:--------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.Read, VirtualAppointment.ReadWrite         |
| Delegated (personal Microsoft account) | Not supported.                                                |
| Application                            | VirtualAppointment.Read.All, VirtualAppointment.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/onlineMeetings/{onlineMeetingId}/getVirtualAppointmentJoinWebUrl
GET /users/{userId}/onlineMeetings/{onlineMeetingId}/getVirtualAppointmentJoinWebUrl
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a String in the response body. The **value** property represents the join web URL for [Microsoft Virtual Appointments](/microsoft-365/frontline/virtual-appointments).

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_virtualappointment",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/getVirtualAppointmentJoinWebUrl
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualAppointment"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True"
}
```
