---
title: "cloudPcLaunchInfo resource type"
description: "Contains the information to connect a Cloud PC."
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
|windows365SwitchCompatible|Boolean|Indicates whether the Cloud PC supports switch functionality. If the value is `true`, it supports switch functionality; otherwise,  `false`.|
|windows365SwitchNotCompatibleReason|String|Indicates the reason the Cloud PC doesn't support switch. `CPCOsVersionNotMeetRequirement` indicates that the user needs to update their Cloud PC operation system version. `CPCHardwareNotMeetRequirement` indicates that the Cloud PC needs more CPU or RAM to support the functionality.|

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

