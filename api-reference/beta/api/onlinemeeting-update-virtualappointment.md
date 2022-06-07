---
title: "Update virtualAppointment"
description: "Update the properties of a virtualAppointment object."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Update virtualAppointment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                            |
|:---------------------------------------|:---------------------------------------------------------------------------------------|
| Delegated (work or school account)     | VirtualAppointment.Read, VirtualAppointment.ReadWrite          |
| Delegated (personal Microsoft account) | Not Supported.                                                                         |
| Application                            | VirtualAppointment.Read.All, VirtualAppointment.ReadWrite.All  |

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to delete online meetings on behalf of that user (with user ID specified in the request path).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /onlineMeeting/virtualAppointment
```

## Request headers

| Name            | Description               |
| :-------------- | :------------------------ |
| Authorization   | Bearer {token}. Required. |
| Accept-Language | Language. Optional.       |

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|"Settings associated with the virtual appointment resource" Optional.|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md) collection|"Client information for the virtual appointment including name, email, and SMS phone number" Optional.|
|externalAppointmentId|String|"Identifier of the appointment from the scheduling system, associated with the current virtual appointment" Optional.|
|externalAppointmentUrl|String|"URL of the appointment resource from the scheduling system, associated with the current virtual appointment" Optional.|
|appointmentClientJoinWebUrl|String|"Join WebUrl of the virtual appointment for clients with waiting room and browser join" Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [virtualAppointment](../resources/virtualappointment.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_virtualappointment"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onlineMeeting/virtualAppointment
Content-Type: application/json
Content-length: 379

{
  "@odata.type": "#microsoft.graph.virtualAppointment",
  "settings": {
    "@odata.type": "microsoft.graph.virtualAppointmentSettings"
  },
  "appointmentClients": [
    {
      "@odata.type": "microsoft.graph.virtualAppointmentUser"
    }
  ],
  "externalAppointmentId": "String",
  "externalAppointmentUrl": "String",
  "appointmentClientJoinWebUrl": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.virtualAppointment",
  "id": "0c7fda79-ff00-f57f-37e3-28183b6d09b5",
  "settings": {
    "@odata.type": "microsoft.graph.virtualAppointmentSettings"
  },
  "appointmentClients": [
    {
      "@odata.type": "microsoft.graph.virtualAppointmentUser"
    }
  ],
  "externalAppointmentId": "String",
  "externalAppointmentUrl": "String",
  "appointmentClientJoinWebUrl": "String"
}
```

