---
title: "virtualAppointmentSettings resource type"
description: "*Settings related to a virtual appointment"
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualAppointmentSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings that define client's experience during the virtual appointment.

## Properties
|Property|Type|Description|Required|
|:---|:---|:---|:---|
|allowClientToJoinUsingBrowser|Boolean|Indicates if client can use the browser to join a virtual appointment. If set to false, client can only use Microsoft Teams to join.|Optional|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.virtualAppointmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualAppointmentSettings",
  "allowClientToJoinUsingBrowser": "Boolean"
}
```

