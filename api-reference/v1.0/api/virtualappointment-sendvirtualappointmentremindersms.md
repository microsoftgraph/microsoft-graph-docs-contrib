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

Send an SMS reminder to external attendees for a Teams Virtual Appointment. This feature requires [Teams Premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams) and attendees must have a valid United States phone number to receive SMS notifications.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualappointment_sendvirtualappointmentremindersms" } -->
| Permission type                        | Permissions (from least to most privileged)                                                          |
|:---------------------------------------|:-----------------------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointmentNotification.Send |
| Delegated (personal Microsoft account) | Not supported.                                                                                       |
| Application                            | VirtualAppointmentNotification.Send                                        |


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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language | Language. Optional.       |

## Request body
In the request body, supply a JSON object with the following parameters:

|Parameter|Type|Description|
|:---|:---|:---|
|attendees|[attendeeNotificationInfo](../resources/attendeeNotificationInfo.md) collection|Represents the phone number and time zone of an external attendee. Required.|
|remindBeforeTimeInMinutesType|[remindBeforeTimeInMinutesType](../resources/remindBeforeTimeInMinutesType.md) collection|Represents the reminder time interval. Required.|

## Response

If successful, this method returns a `202 Accepted` response code. 

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualappointment_sendVirtualAppointmentReminderSms",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentReminderSms

{ 
    "attendees": [ 
        {
            "phoneNumber":  "+13129224122",
            "timeZone": "Pacific Standard Time"
        },
        {
            "phoneNumber":  "+1242421412",
            "timeZone": "Eastern Standard Time"
        }
    ], 
    "remindBeforeTimeInMinutesType": "mins15"
} 
```

---

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

{}
```
