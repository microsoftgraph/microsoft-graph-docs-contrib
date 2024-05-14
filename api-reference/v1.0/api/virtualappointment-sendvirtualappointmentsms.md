---
title: "virtualAppointment: sendVirtualAppointmentSms"
description: "Send a virtual appointment SMS notification."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# virtualAppointment: sendVirtualAppointmentSms

Namespace: microsoft.graph

Send an SMS notification to external attendees when a Teams virtual appointment is confirmed, rescheduled, or canceled. This feature requires [Teams premium](/microsoftteams/teams-add-on-licensing/licensing-enhance-teams). Attendees must have a valid United States phone number to receive these SMS notifications.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).
<!-- { "blockType": "permissions", "name": "virtualappointment_sendvirtualappointmentsms" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualappointment-sendvirtualappointmentsms-permissions.md)]


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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Accept-Language | Language. Optional.       |

## Request body

In the request body, supply a JSON object with the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|attendees|[attendeeNotificationInfo](../resources/attendeenotificationinfo.md) collection|Represents the phone number and time zone of an external attendee. Required.|
|messageType|[virtualAppointmentMessageType](../resources/virtualappointmentmessagetype.md) collection|Indicates the type of SMS notification to send. The possible values are: `confirmation`, `reschedule`, and `cancellation`. Required.|

## Response

If successful, this method returns a `202 Accepted` response code. 

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualappointment_sendVirtualAppointmentSms",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentSms

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
    "messageType": "confirmation"
} 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-virtualappointment-sendvirtualappointmentsms-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-virtualappointment-sendvirtualappointmentsms-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-virtualappointment-sendvirtualappointmentsms-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-virtualappointment-sendvirtualappointmentsms-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualappointment-sendvirtualappointmentsms-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-virtualappointment-sendvirtualappointmentsms-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-virtualappointment-sendvirtualappointmentsms-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-virtualappointment-sendvirtualappointmentsms-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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
