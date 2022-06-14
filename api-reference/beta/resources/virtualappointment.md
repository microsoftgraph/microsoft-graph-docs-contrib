---
title: "virtualAppointment resource type"
description: "Contains information about a virtual appointment."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualAppointment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Virtual Appointments are designed for business to consumer online workflows and include enhanced features such as mobile browser join and client waiting room. Resource contains information about a virtual appointment, including the client join URL, settings and client information.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create virtualAppointment](../api/virtualappointment-put.md)|[virtualAppointment](../resources/virtualappointment.md)|Create a new [virtualAppointment](../resources/virtualappointment.md) object.|
|[Get virtualAppointment](../api/virtualappointment-get.md)|[virtualAppointment](../resources/virtualappointment.md)|Read the properties and relationships of a [virtualAppointment](../resources/virtualappointment.md) object.|
|[Update virtualAppointment](../api/virtualappointment-update.md)|[virtualAppointment](../resources/virtualappointment.md)|Update the properties of a [virtualAppointment](../resources/virtualappointment.md) object.|
|[Delete virtualAppointment](../api/virtualappointment-delete.md)|None|Deletes a [virtualAppointment](../resources/virtualappointment.md) object.|

> [!TIP]
>
> When creating a virtual appointment resource for the first time in a tenant, caller is returned a status resource as service is provisioned. Provisioning takes less than five minutes. 

## Properties
|Property|Type|Description|Required|
|:---|:---|:---|:---|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|Settings associated with the virtual appointment resource |Optional|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md)|Client information for the virtual appointment including name, email, and SMS phone number |Optional|
|externalAppointmentId|String|Identifier of the appointment from the scheduling system, associated with the current virtual appointment |Optional|
|externalAppointmentUrl|String|URL of the appointment resource from the scheduling system, associated with the current virtual appointment |Optional|
|appointmentClientJoinWebUrl|String|Join WebUrl of the virtual appointment for clients with waiting room and browser join |Optional|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualAppointment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualAppointment",
  "id": "String (identifier)",
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

