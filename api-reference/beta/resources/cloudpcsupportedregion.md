---
title: "cloudPcSupportedRegion resource type"
description: "Represents a supported region to establish an Azure network connection for Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSupportedRegion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a supported region to establish an Azure network connection for Cloud PCs.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcSupportedRegions](../api/virtualendpoint-list-supportedregions.md)|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|List the supported regions that are available for creating Cloud PC connections.|

## Properties

| Property | Type | Description |
|:---      |:---  |:---         |
|displayName|String|The name for the supported region. Read-only.|
|id|String|The unique identifier for the supported region. Read-only.|
|regionStatus|[cloudPcSupportedRegionStatus](#cloudpcsupportedregionstatus-values)|The status of the supported region. Possible values are: `available`, `restricted`, `unavailable`, `unknownFutureValue`. Read-only.|
|supportedSolution|[cloudPcManagementService](../resources/cloudpconpremisesconnection.md#cloudpcmanagementservice-values)|The supported service or solution for the region. The possible values are: `windows365`, `devBox`, `rpaBox`,`unknownFutureValue`. Read-only.|
|regionGroup|[cloudPcRegionGroup](#cloudpcregiongroup-values)|The logic geographic group this region belongs to. Multiple regions could belong to one region group. Customer could select a regionGroup when provision a Cloud PC, 
the Cloud PC will be put under one of the regions under the group based on resource status. e.g. Europe region group contains North Europe and West Europe regions. Possible values are: 'default', 'australia', 'canada', 'usCentral', 'usEast", 
'usWest', 'france', 'germany', 'europeUnion', 'unitedKingdom', 'japan', 'asia', 'india', 'southAmerica', 'usGovernment', 'usGovrnmentDod', 'norway', 'switzerland' and 'southKorea'. Read-only.|

### cloudPcSupportedRegionStatus values

|Member|Description|
|:---|:---|
|available|The region is available and fully supports Cloud PCs to be provisioned in that region.|
|restricted|The region is considered a restricted region and can only have a Cloud PC provisioned in that region for specific tenants.|
|unavailable|The region has no support for Cloud PC provisioning.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcRegionGroup values

|Member|Description|
|:---|:---|
| default | The region belongs to the default region group.|
| australia | The region belongs to Australia region group.|
| canada | The region belongs to Canada region group |
| usCentral | The region belongs to US Central region group |
| usEast | The region belongs to US East region group |
| usWest | The region belongs to US West region group |
| france | The region belongs to France region group |
| germany | The region belongs to Germany region group |
| europeUnion | The region belongs to Europe Union region group |
| unitedKingdom | The region belongs to United Kingdom region group |
| japan | The region belongs to Japan region group |
| asia | The region belongs to Asia region group |
| india | The region belongs to India region group |
| southAmerica | The region belongs to South America region group |
| usGovernment | The region belongs to US Government region group |
| usGovernmentDod | The region belongs to US Government DOD region group |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use |
| norway | The region belongs to Norway region group |
| switzerland | The region belongs to Switzerland region group |
| southKorea | The region belongs to South Korea region group |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
  "regionStatus": "microsoft.graph.cloudPcSupportedRegionStatus",
  "supportedSolution": "String",
  "regionGroup": "microsoft.graph.cloudPcRegionGroup"
}
```
