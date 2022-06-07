---
title: "virtualAppointment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualAppointment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualAppointments](../api/onlinemeeting-list-virtualappointment.md)|[virtualAppointment](../resources/virtualappointment.md) collection|Get a list of the [virtualAppointment](../resources/virtualappointment.md) objects and their properties.|
|[Create virtualAppointment](../api/onlinemeeting-post-virtualappointment.md)|[virtualAppointment](../resources/virtualappointment.md)|Create a new [virtualAppointment](../resources/virtualappointment.md) object.|
|[Get virtualAppointment](../api/virtualappointment-get.md)|[virtualAppointment](../resources/virtualappointment.md)|Read the properties and relationships of a [virtualAppointment](../resources/virtualappointment.md) object.|
|[Update virtualAppointment](../api/virtualappointment-update.md)|[virtualAppointment](../resources/virtualappointment.md)|Update the properties of a [virtualAppointment](../resources/virtualappointment.md) object.|
|[Delete virtualAppointment](../api/onlinemeeting-delete-virtualappointment.md)|None|Deletes a [virtualAppointment](../resources/virtualappointment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appointmentClientJoinWebUrl|String|**TODO: Add Description**|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md) collection|**TODO: Add Description**|
|externalAppointmentId|String|**TODO: Add Description**|
|externalAppointmentUrl|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|**TODO: Add Description**|

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

