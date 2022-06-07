---
title: "Create virtualAppointment"
description: "Create a new virtualAppointment object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create virtualAppointment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [virtualAppointment](../resources/virtualappointment.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.virtualAppointment not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [virtualAppointment](../resources/virtualappointment.md) object.

You can specify the following properties when creating a **virtualAppointment**.

|Property|Type|Description|
|:---|:---|:---|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|**TODO: Add Description** Optional.|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md) collection|**TODO: Add Description** Optional.|
|externalAppointmentId|String|**TODO: Add Description** Optional.|
|externalAppointmentUrl|String|**TODO: Add Description** Optional.|
|appointmentClientJoinWebUrl|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [virtualAppointment](../resources/virtualappointment.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_virtualappointment_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.virtualAppointment not found
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

