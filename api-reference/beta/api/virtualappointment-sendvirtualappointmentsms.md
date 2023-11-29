---
title: "virtualAppointment: sendVirtualAppointmentSms"
description: "Send a virtual appointment SMS notification."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# virtualAppointment: sendVirtualAppointmentSms

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Send an SMS notification to external attendees when a Teams Virtual Appointment is confirmed, rescheduled, or canceled. This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams). Attendees must have a valid United States phone number to receive these SMS notifications.

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
POST /me/onlineMeetings/{onlineMeetingId}/sendVirtualAppointmentSms
POST /users/{userId}/onlineMeetings/{onlineMeetingId}/sendVirtualAppointmentSms
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body

In the request body, supply a JSON object with the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|phonenumbers|String|The list of phone numbers to which to send the notification. Required.|
|virtualAppointmentSmsType|String|A value that indicates the type of the SMS notification to send. The allowable values are `confirmation`, `reschedule`, and `cancellation`. Required.|

## Response

If successful, this method returns a `202 Accepted` response code. 

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_virtualappointment_sendVirtualAppointmentSms",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentSms
```
{
“phoneNumbers”: [ “+13129224122”, “+1242421412”],
“virtualAppointmentSmsType”: “confirmation”
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
