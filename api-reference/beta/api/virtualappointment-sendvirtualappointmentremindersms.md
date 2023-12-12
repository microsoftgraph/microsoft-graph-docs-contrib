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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/virtualappointment-sendvirtualappointmentremindersms-java-snippets.md)]
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
