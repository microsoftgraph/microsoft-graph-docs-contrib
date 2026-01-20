---
title: "cloudPcSupportedRegion resource type"
description: "Represents a supported region to establish an Azure network connection for Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/07/2024
---

# cloudPcSupportedRegion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a supported region to establish an Azure network connection for Cloud PCs.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-supportedregions.md)|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|List the supported regions that are available for creating Cloud PC connections.|

## Properties

| Property | Type | Description |
|:---      |:---  |:---         |
|displayName|String|The name for the supported region. Read-only.|
|geographicLocationType|[cloudPcGeographicLocationType](../resources/cloudpcgeographiclocationtype.md)| The geographic location where the region is located. Read-only.|
|id|String|The unique identifier for the supported region. Read-only.|
|regionGroup|[cloudPcRegionGroup](../resources/cloudpcregiongroup.md)|The geographic group this region belongs to. Multiple regions can belong to one region group. For example, the `europeUnion` region group contains the Northern Europe and Western Europe regions. A customer can select a region group when provisioning a Cloud PC; however, the Cloud PC is put under one of the regions under the group based on resource capacity. The region with more quota is chosen. Read-only.|
|regionRestrictionDetail|[cloudPcSupportedRegionRestrictionDetail](../resources/cloudpcsupportedregionrestrictiondetail.md)| When the region isn't available, all region restrictions are set to `true`. These restrictions apply to three properties: **cPURestricted**, **gPURestricted**, and **nestedVirtualizationRestricted**. **cPURestricted** indicates whether the region is available for CPU, **gPURestricted** indicates whether the region is available for GPU, and **nestedVirtualizationRestricted** indicates whether the region is available for nested virtualization. Read-only.|
|regionStatus|[cloudPcSupportedRegionStatus](#cloudpcsupportedregionstatus-values)|The status of the supported region. The possible values are: `available`, `restricted`, `unavailable`, `unknownFutureValue`. Read-only.|
|supportedSolution|[cloudPcManagementService](../resources/cloudpconpremisesconnection.md#cloudpcmanagementservice-values)|The supported service or solution for the region. The possible values are: `windows365`, `devBox`, `unknownFutureValue`, `rpaBox`, `microsoft365Opal`, `microsoft365BizChat`. Use the `Prefer: include-unknown-enum-members` request header to get the following value or values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rpaBox`. Read-only.|

### cloudPcSupportedRegionStatus values

|Member|Description|
|:---|:---|
|available|The region is available and fully supports Cloud PCs to be provisioned in that region.|
|restricted|The region is considered a restricted region and can only have a Cloud PC provisioned in that region for specific tenants.|
|unavailable|The region has no support for Cloud PC provisioning.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcSupportedRegion",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSupportedRegion",
  "displayName": "String",
  "id": "String (identifier)",
  "regionGroup": "String",
  "regionRestrictionDetail": {"@odata.type": "microsoft.graph.cloudPcSupportedRegionRestrictionDetail"},
  "regionStatus": "String",
  "geographicLocationType": "String",
  "supportedSolution": "String"
}
```
