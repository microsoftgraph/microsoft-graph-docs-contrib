---
title: "virtualAppointmentUser resource type"
description: "Represents information about a client user in a virtual appointment."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualAppointmentUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION] 
  > The Virtual appointment resource and supporting methods are deprecated and will stop returning data on May 31, 2023.

Represents information about a client user in a virtual appointment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the user who participates in a virtual appointment. Optional.|
|emailAddress|String|The email address of the user who participates in a virtual appointment. Optional.|
|smsCapablePhoneNumber|String|The phone number for sending SMS texts for the user who participates in a virtual appointment. Optional.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualAppointmentUser"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.virtualAppointmentUser",
    "displayName": "String",
    "emailAddress": "String",
    "smsCapablePhoneNumber": "String"
}
```

