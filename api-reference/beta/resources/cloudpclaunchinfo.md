---
title: "cloudPcLaunchInfo resource type"
description: "Contains the information to connect a cloud PC."
author: "andrewku0409"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcLaunchInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the information to connect a [cloudPC](../resources/cloudpc.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cloudPcId|String|The unique identifier of the Cloud PC.|
|cloudPcLaunchUrl|String|The connect URL of the Cloud PC.|
|windows365SwitchCompatible|Boolean|Indicate if the Cloud PC supports switch functionality. If the value is true, it supports. If the value is false, it doesn't support.|
|windows365SwitchNotCompatibleReason|String|Indicate the reason Cloud PC doesn't support switch. "CPCOsVersionNotMeetRequirement" indicates user needs to update their CloudPc OS version. "CPCHardwareNotMeetRequirement" indicates the cloud pc needs more cpu or ram to support the functionality.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcLaunchInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcLaunchInfo",
  "cloudPcId": "String",
  "cloudPcLaunchUrl": "String",
  "windows365SwitchCompatible":"Boolean",
  "windows365SwitchNotCompatibleReason":"String"
}
```

