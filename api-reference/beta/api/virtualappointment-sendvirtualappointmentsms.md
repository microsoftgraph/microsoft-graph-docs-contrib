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

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_virtualappointment_sendVirtualAppointmentSms",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
POST https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/sendVirtualAppointmentSms

{
"phoneNumbers": [ "+13129224122", "+1242421412"],
"virtualAppointmentSmsType": "confirmation"
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-virtualappointment-sendvirtualappointmentsms-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-virtualappointment-sendvirtualappointmentsms-php-snippets.md)]
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
