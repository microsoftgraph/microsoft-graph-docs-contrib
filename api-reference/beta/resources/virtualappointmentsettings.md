---
title: "virtualAppointmentSettings resource type"
description: "Represents settings that define the experience of a client user during a virtual appointment."
author: "benmicrosoft"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# virtualAppointmentSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION] 
  > The Virtual appointment resource and supporting methods are deprecated and will stop returning data on May 31, 2023.

Represents settings that define the experience of a client user during a virtual appointment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowClientToJoinUsingBrowser|Boolean|Indicates whether the client can use the browser to join a virtual appointment. If set to `false`, the client can only use Microsoft Teams to join. Optional.|

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

