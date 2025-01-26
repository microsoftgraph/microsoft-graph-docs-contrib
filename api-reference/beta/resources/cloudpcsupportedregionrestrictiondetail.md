---
title: "cloudPcSupportedRegionRestrictionDetail resource type"
description: "Restriction status of cloud PC supported region. Including CPU provisioning status, GPU provisioning status and Nested Virtualization provisioning status."
author: "JannyMa"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 01/16/2025
---

# cloudPcSupportedRegionRestrictionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the restriction status of a [cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md). Including CPU quota status, GPU quota status and Nested Virtualization status.

## Properties

| Property                       | Type       | Description |
|:-------------------------------|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------         |
| cPURestricted                  | Edm.Boolean| Indicates that the region is restricted for Cloud PC CPU provisioning. When TRUE, Cloud PC provisioning with CPU is not available in this region. When FALSE, Cloud PC provisioning with CPU is available in the region. Default is FALSE. Read-Only                                     | No       | Yes      |
| gPURestricted                  | Edm.Boolean| Indicates that the region is restricted for Cloud PC GPU provisioning. When TRUE, Cloud PC provisioning with GPU is not available in this region. When FALSE, Cloud PC provisioning with GPU is available in the region. Default is FALSE. Read-Only                                     | No       | Yes      |
| nestedVirtualizationRestricted | Edm.Boolean| Indicates that the region is restricted for Cloud PC nested virtualization provisioning. When TRUE, Cloud PC provisioning with nested virtualization is not available in this region. When FALSE, Cloud PC provisioning with nested virtualization is available in the region. Default is FALSE. Read-Only | No       | Yes      |

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