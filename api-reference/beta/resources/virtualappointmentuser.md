---
title: "virtualAppointmentUser resource type"
description: "Contains information about virtual appointment users"
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualAppointmentUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Type to represent a client user in a virtual appointment.

## Properties
|Property|Type|Description|Required|
|:---|:---|:---|:---|
|displayName|String|Display name of the user participating in a virtual appointment|Optional|
|emailAddress|String|Email address of the user participating in a virtual appointment|Optional|
|smsCapablePhoneNumber|String|Phone number for sending SMS texts for user participating in a virtual appointment|Optional|

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

