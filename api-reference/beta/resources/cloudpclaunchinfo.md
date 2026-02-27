---
title: "cloudPcLaunchInfo resource type (deprecated)"
description: "Contains the information to connect a Cloud PC."
author: "andrewku0409"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
toc.title: "Cloud PC launch info (deprecated)"
---

# cloudPcLaunchInfo resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!CAUTION]
> The **cloudPcLaunchInfo** resource is deprecated and will stop returning data on October 30, 2026. Going forward, use the [cloudPcLaunchDetail](../resources/cloudpclaunchdetail.md) API.

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
The following JSON representation shows the resource type.
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

