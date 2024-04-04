---
title: "Create virtualAppointment"
description: "Create a new virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.topic: reference
---

# Create virtualAppointment (deprecated)
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **virtualAppointment** resource and supporting methods are deprecated and will stop returning data on June 30, 2023. We recommend that you update existing apps that use this API to use the new [Get join link](../api/virtualappointment-getvirtualappointmentjoinweburl.md) function.

Create a new [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "virtualappointment_put" } -->
[!INCLUDE [permissions-table](../includes/permissions/virtualappointment-put-permissions.md)]

> [!NOTE]
> Virtual appointment will transition from online meeting permissions to more specific virtual appointment permissions during the preview period. This will give developers more granular control over virtual appointment permissions. We'll provide additional details on when online meeting permissions will no longer be supported before the preview period ends.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /me/onlineMeetings/{onlineMeetingId}/virtualAppointment
PUT /users/{userId}/onlineMeetings/{onlineMeetingId}/virtualAppointment
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [virtualAppointment](../resources/virtualappointment.md) object.

You can specify the following properties when you create a **virtualAppointment**.

|Property|Type|Description|
|:---|:---|:---|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md) collection|The client information for the virtual appointment, including name, email, and SMS phone number. Optional.|
|appointmentClientJoinWebUrl|String|The join web URL of the virtual appointment for clients with waiting room and browser join. Optional.|
|externalAppointmentId|String|The identifier of the appointment from the scheduling system, associated with the current virtual appointment. Optional.|
|externalAppointmentUrl|String|The URL of the appointment resource from the scheduling system, associated with the current virtual appointment. Optional.|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|The settings associated with the virtual appointment resource. Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [virtualAppointment](../resources/virtualappointment.md) object in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_virtualappointment_from_",
  "sampleKeys": ["MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi"]
}
-->
``` http
PUT https://graph.microsoft.com/beta/me/onlineMeetings/MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi/virtualAppointment
Content-Type: application/json
ETag: W/"ZfYdV7Meckeip07P//nwjAAADyI7NQ=="
Content-length: 379

{
    "@odata.type": "#microsoft.graph.virtualAppointment",
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
    "externalAppointmentUrl": "https://anyschedulingsystem.com/api/appointments/MkADKnAAA="
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-virtualappointment-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.virtualAppointment"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

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

