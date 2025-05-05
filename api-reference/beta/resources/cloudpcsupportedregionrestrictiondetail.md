---
title: "cloudPcSupportedRegionRestrictionDetail resource type"
description: "Represents the restriction status of a Cloud PC supported region, including the CPU provisioning status, GPU provisioning status, and nested virtualization provisioning status."
author: "JannyMa"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 01/16/2025
---

# cloudPcSupportedRegionRestrictionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the restriction status of a [cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md), including the CPU provisioning status, GPU provisioning status, and nested virtualization provisioning status.

## Properties

| Property                       | Type       | Description |
|:-------------------------------|:-----------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| cPURestricted                  | Boolean    | Indicates that the region is restricted for Cloud PC CPU provisioning. `True` indicates that Cloud PC provisioning with CPU isn't available in this region. `false` indicates that it's available. The default value is `false`. Read-only. |
| gPURestricted                  | Boolean    | Indicates that the region is restricted for Cloud PC GPU provisioning. `True` indicates that Cloud PC provisioning with GPU isn't available in this region. `false` indicates that it's available. The default value is `false`. Read-only. |
| nestedVirtualizationRestricted | Boolean    | Indicates that the region is restricted for Cloud PC nested virtualization provisioning. `True` indicates that Cloud PC provisioning with nested virtualization isn't available in this region; `false` indicates that it's available. The default value is `false`. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcSupportedRegionRestrictionDetail"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSupportedRegionRestrictionDetail",
  "cPURestricted": "Boolean",
  "gPURestricted": "Boolean",
  "nestedVirtualizationRestricted": "Boolean"
}
```