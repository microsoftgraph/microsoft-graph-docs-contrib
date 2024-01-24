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

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualappointment_sendvirtualappointmentremindersms" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualappointment-sendvirtualappointmentremindersms-permissions.md)]


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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "virtualappointment_sendVirtualAppointmentReminderSms",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentReminderSms

{
"phoneNumbers": [ "+13129224122", "+1242421412"],
"remindBeforeTimeInMinutesType": "mins15"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/virtualappointment-sendvirtualappointmentremindersms-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/virtualappointment-sendvirtualappointmentremindersms-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/virtualappointment-sendvirtualappointmentremindersms-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/virtualappointment-sendvirtualappointmentremindersms-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/virtualappointment-sendvirtualappointmentremindersms-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/virtualappointment-sendvirtualappointmentremindersms-python-snippets.md)]
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
