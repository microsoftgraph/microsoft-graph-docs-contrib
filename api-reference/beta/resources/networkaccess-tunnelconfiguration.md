---
title: "tunnelConfiguration resource type"
description: "Specifies connectivity settings such as protocol, IPSec policy, and preshared key for a customer premises equipment (CPE) in a branchSite."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
---

# tunnelConfiguration resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies connectivity settings such as protocol, IPSec policy, and preshared key for a deviceLink, represented by a customer premises equipment (CPE), in a branchSite.
This is an abstract type from which the [microsoft.graph.networkaccess.tunnelConfigurationIKEv2Custom](networkaccess-tunnelconfigurationikev2custom.md) and [microsoft.graph.networkaccess.tunnelConfigurationIKEv2Default](networkaccess-tunnelconfigurationikev2default.md) resource types are derived.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|preSharedKey|String|A key to establish secure connection between the link and VPN tunnel on the edge.|
|zoneRedundancyPreSharedKey|String|Another key for zone redundant tunnel. Required only when you select `zoneRedundancy` redindancyTier when creating a deviceLink.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.tunnelConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tunnelConfiguration",
  "preSharedKey": "String",
  "zoneRedundancyPreSharedKey": "String"
}
```

