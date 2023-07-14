---
title: "Update virtualAppointment"
description: "Update the properties of a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Update virtualAppointment (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **virtualAppointment** resource and supporting methods are deprecated and will stop returning data on June 30, 2023. We recommend that you update existing apps that use this API to use the new [Get join link](../api/virtualappointment-getvirtualappointmentjoinweburl.md) function.

Update the properties of a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                            |
|:---------------------------------------|:---------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.ReadWrite, OnlineMeetings.ReadWrite                                  |
| Delegated (personal Microsoft account) | Not supported.                                                                         |
| Application                            | VirtualAppointment.ReadWrite.All

> [!NOTE]
> Virtual appointment will transition from online meeting permissions to more specific virtual appointment permissions during the preview period. This will give developers more granular control over virtual appointment permissions. We'll provide additional details on when online meeting permissions will no longer be supported before the preview period ends.


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /me/onlineMeetings/{onlineMeetingId}/virtualAppointment
PATCH /users/{userId}/onlineMeetings/{onlineMeetingId}/virtualAppointment
```

## Request headers

| Name            | Description                |
| :-------------- | :--------------------------|
| Authorization   | Bearer {token}. Required.  |
| Accept-Language | Language. Optional.        |
| Content-Type    | application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md) collection|The client information for the virtual appointment, including name, email, and SMS phone number. Optional.|
|appointmentClientJoinWebUrl|String|The join web URL of the virtual appointment for clients with waiting room and browser join. Optional.|
|externalAppointmentId|String|The identifier of the appointment from the scheduling system, associated with the current virtual appointment. Optional.|
|externalAppointmentUrl|String|The URL of the appointment resource from the scheduling system, associated with the current virtual appointment. Optional.|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|The settings associated with the virtual appointment resource. Optional.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_virtualappointment",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/virtualAppointment 
Content-Type: application/json
If-Match: W/"ZfYdV7Meckeip07P//nwjAAADyI7NQ=="
Content-length: 379

{
    "@odata.type": "#microsoft.graph.virtualAppointment",
    "id": "0c7fda79-ff00-f57f-37e3-28183b6d09b5",
    "settings": {
        "@odata.type": "microsoft.graph.virtualAppointmentSettings",
        "allowClientToJoinUsingBrowser": "true"
    },
    "appointmentClients": [
        {
            "@odata.type": "microsoft.graph.virtualAppointmentUser",
            "emailAddress": "gradya@contoso.com",
            "displayName": "Grady Archie",
            "smsCapablePhoneNumber": "123-456-7890"
        }
    ],
    "externalAppointmentId": "AAMkADKnAAA=",
    "externalAppointmentUrl": "https://anyschedulingsystem.com/api/appointments/MkADKnAAA=",
    "appointmentClientJoinWebUrl": "https://visit.teams.microsoft.com/webrtc-svc/api/route?tid=a796be92-&convId=19:meeting_=True"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-virtualappointment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-virtualappointment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-virtualappointment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-virtualappointment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-virtualappointment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-virtualappointment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-virtualappointment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

PATCH returns 412 Precondition Failed if the "If-Match" value doesn't match "ETag" in the virtual appointment.

