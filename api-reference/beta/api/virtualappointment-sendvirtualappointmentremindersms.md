---
title: "virtualAppointment: sendVirtualAppointmentReminderSms"
description: "Send an SMS reminder to external attendees for a Teams Virtual Appointment."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# virtualAppointment: sendVirtualAppointmentReminderSms

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send an SMS reminder to external attendees for a Teams Virtual Appointment. This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) and attendees must have a valid United States phone number to receive SMS notifications.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                          |
|:---------------------------------------|:-----------------------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.ReadWrite |
| Delegated (personal Microsoft account) | Not supported.                                                                                       |
| Application                            | VirtualAppointment.ReadWrite.All                                        |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/onlineMeetings/{onlineMeetingId}/sendVirtualAppointmentReminderSms
POST /users/{userId}/onlineMeetings/{onlineMeetingId}/sendVirtualAppointmentReminderSms
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body
In the request body, supply a JSON object with the following parameters:

|Parameter|Type|Description|
|:---|:---|:---|
|phonenumbers|String|The list of phone numbers to which to send the notification. Required.|
|remindBeforeTimeInMinutes|String|The string `mins15`, which indicates that a reminder will be sent 15 minutes before the meeting start time. Required.|

## Response

If successful, this method returns a `202 Accepted` response code. 

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_virtualappointment_getVirtualAppointmentJoinWebUrl",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentReminderSms
```
{
“phoneNumbers”: [ “+13129224122”, “+1242421412”],
“remindBeforeTimeInMinutesType”: "mins15"
}


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.String"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

```
