---
title: "cloudPcSupportedRegionRestrictionDetail resource type"
description: "Represents the restriction status of a Cloud PC supported region, including the CPU provisioning status, GPU provisioning status, nested virtualization provisioning status, and availability zone support status."
author: "yizcheng-574"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/31/2026
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
| availabilityZoneRestricted     | Boolean    | Indicates that the region is restricted due to lack of availability zone support. When `True`, the region does not have availability zone infrastructure and is intended for disaster recovery scenarios only. When `false`, the region has full availability zone support. The default is `false`. Read-Only. |
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
  "nestedVirtualizationRestricted": "Boolean",
  "availabilityZoneRestricted": "Boolean"
}
```