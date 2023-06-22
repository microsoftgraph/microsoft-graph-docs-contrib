---
title: "virtualAppointment resource type"
description: "Represents information about a virtual appointment, including the client join URL, settings, and the client information."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualAppointment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION] 
  > The Virtual appointment resource and supporting methods are deprecated and will stop returning data on May 31, 2023. We recommend that you update existing apps that use this API to the new [Get Virtual appointment join link](../api/virtualappointment-getvirtualappointmentjoinweburl.md) function.

Represents information about a virtual appointment, including the client join URL, settings, and the client information. Virtual appointments are designed for business to consume online workflows and include enhanced features such as mobile browser join and client waiting room.

> [!NOTE]
> For the preview period, customers with access to virtual appointments with their Microsoft 365 licenses benefit from unlimited virtual appointment calls via the Microsoft Graph API. We'll provide additional details on the licensing requirements before the preview period ends.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create virtualAppointment](../api/virtualappointment-put.md)|[virtualAppointment](../resources/virtualappointment.md)|Create a new [virtualAppointment](../resources/virtualappointment.md) object.|
|[Get virtualAppointment](../api/virtualappointment-get.md)|[virtualAppointment](../resources/virtualappointment.md)|Read the properties and relationships of a [virtualAppointment](../resources/virtualappointment.md) object.|
|[Update virtualAppointment](../api/virtualappointment-update.md)|None|Update the properties of a [virtualAppointment](../resources/virtualappointment.md) object.|
|[Delete virtualAppointment](../api/virtualappointment-delete.md)|None|Delete a [virtualAppointment](../resources/virtualappointment.md) object.|

> [!TIP]
>
> When you create a virtual appointment resource for the first time in a tenant, the request returns a `409 Conflict` response code with a retry header that indicates how long a caller should wait before making the request again. The service provisioning takes less than five minutes. This step is only required once per customer tenant.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appointmentClients|[virtualAppointmentUser](../resources/virtualappointmentuser.md) collection|The client information for the virtual appointment, including name, email, and SMS phone number. Optional.|
|appointmentClientJoinWebUrl|String|The join web URL of the virtual appointment for clients with waiting room and browser join. Optional.|
|externalAppointmentId|String|The identifier of the appointment from the scheduling system, associated with the current virtual appointment. Optional.|
|externalAppointmentUrl|String|The URL of the appointment resource from the scheduling system, associated with the current virtual appointment. Optional.|
|settings|[virtualAppointmentSettings](../resources/virtualappointmentsettings.md)|The settings associated with the virtual appointment resource. Optional.|

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
    "appointmentClients": [
        {
            "@odata.type": "microsoft.graph.virtualAppointmentUser"
        }
    ],
    "appointmentClientJoinWebUrl": "String",
    "externalAppointmentId": "String",
    "externalAppointmentUrl": "String",
    "id": "String (identifier)",
    "settings": {
        "@odata.type": "microsoft.graph.virtualAppointmentSettings"
    }
}
```

