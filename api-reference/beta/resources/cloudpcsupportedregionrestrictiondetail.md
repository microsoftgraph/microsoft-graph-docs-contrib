---
title: "cloudPcSupportedRegionRestrictionDetail resource type"
description: "Restriction status of cloud PC supported region. Including CPU quota status, GPU quota status and Nested Virtualization status."
author: "JannyMa"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 01/16/2025
---

# cloudPcSupportedRegionRestrictionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the restriction status of a [cloudPcSupportedRegion]((../resources/cloudpcsupportedregion.md)). Including CPU quota status, GPU quota status and Nested Virtualization status.

## Properties

| Property                       | Type       | Description |
|:-------------------------------|:-----------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------         |
| cPURestricted                  | Edm.Boolean| Indicates whether CPU quota is available for the region. When TRUE, CPU quota is available for the region, When FALSE, CPU quota is not available for the region. Default is FALSE. Read-Only                                     | No       | Yes      |
| gPURestricted                  | Edm.Boolean| Indicates whether GPU quota is available for the region. When TRUE, GPU quota is available for the region, When FALSE, GPU quota is not available for the region. Default is FALSE.. Read-Only                                     | No       | Yes      |
| nestedVirtualizationRestricted | Edm.Boolean| Indicates whether Nested Virtualization quota is available for the region. When TRUE, Nested Virtualization quota is available for the region. When FALSE, Nested Virtualization quota is not available for the region. Read-Only | No       | Yes      |

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