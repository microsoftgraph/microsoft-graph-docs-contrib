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
|id|String|The unique identifier for the supported region. Read-only.|
|regionGroup|[cloudPcRegionGroup](#cloudpcregiongroup-values)|The geographic group this region belongs to. Multiple regions can belong to one region group. For example, the `europeUnion` region group contains the Northern Europe and Western Europe regions. A customer can select a region group when provisioning a Cloud PC; however, the Cloud PC is put under one of the regions under the group based on resource capacity. The region with more quota is chosen. The possible values are: `default`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `unknownFutureValue`, `norway`, `switzerland`，`southKorea`, `middleEast`, `mexico`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `norway`, `switzerland`，`southKorea`, `middleEast`, `mexico`. Read-only.|
|geographicLocationType|[cloudPcGeographicLocationType](#cloudpcgeographiclocationtype-values)| The geographic location where the region is located. The possible values are: `default`, `asia`, `australasia`, `canada`, `europe`, `india`, `africa`, `usCentral`, `usEast`, `usWest`, `southAmerica`, `middleEast`, `centralAmerica`, `usGovernment`, `unknownFutureValue`, `mexico`. Default value is default. Read-only.|
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

### cloudPcRegionGroup values

| Member             | Description                                                                        |
|:-------------------|:-----------------------------------------------------------------------------------|
| default            | The region belongs to the default region group.                                    |
| australia          | The region belongs to the region group: Australia.                                 |
| canada             | The region belongs to the region group: Canada.                                    |
| usCentral          | The region belongs to the region group: Central US.                                |
| usEast             | The region belongs to the region group: East US.                                   |
| usWest             | The region belongs to the region group: West US.                                   |
| france             | The region belongs to the region group: France.                                    |
| germany            | The region belongs to the region group: Germany.                                   |
| europeUnion        | The region belongs to the region group: European Union.                            |
| unitedKingdom      | The region belongs to the region group: United Kingdom.                            |
| japan              | The region belongs to the region group: Japan.                                     |
| asia               | The region belongs to the region group: Asia.                                      |
| india              | The region belongs to the region group: India.                                     |
| southAmerica       | The region belongs to the region group: South America.                             |
| euap               | The region belongs to the region group: Early Update Access Program.               |
| usGovernment       | The region belongs to the region group: US Government.                             |
| usGovernmentDOD    | The region belongs to the region group: US Government Department of Defense (DOD). |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                  |
| norway             | The region belongs to the region group: Norway.                                    |
| switzerland        | The region belongs to the region group: Switzerland.                               |
| southKorea         | The region belongs to the region group: South Korea.                               |
| middleEast         | The region belongs to the region group: Middle East.                               |
| mexico             | The region belongs to the region group: Mexico.                                    |
| australasia        | The region belongs to the region group: Australasia.                               |
| europe             | The region belongs to the region group: Europe.                                    |
| singapore          | The region belongs to the region group: Singapore.                                 |
| hongKong           | The region belongs to the region group: Hong Kong SAR.                             |
| ireland            | The region belongs to the region group: Ireland.                                   |
| sweden             | The region belongs to the region group: Sweden.                                    |
| poland             | The region belongs to the region group: Poland.                                    |
| italy              | The region belongs to the region group: Italy.                                     |
| spain              | The region belongs to the region group: Spain.                                     |
| netherlands        | The region belongs to the region group: Netherlands.                               |
| brazil             | The region belongs to the region group: Brazil.                                    |
| israel             | The region belongs to the region group: Israel.                                    |
| automatic          | There's no preference for a specific region or region group. Windows 365 service distributes the Cloud PCs across all healthy regions within the chosen grouping to maximize reliability and availability. |
| indonesia          | The region belongs to the region group: Indonesia.                                 |
| taiwan             | The region belongs to the region group: Taiwan.                                    |
| malaysia           | The region belongs to the region group: Malaysia.                                  |
| newZealand         | The region belongs to the region group: New Zealand.                               |
| austria            | The region belongs to the region group: Austria.                                   |
| denmark            | The region belongs to the region group: Denmark.                                   |
| belgium            | The region belongs to the region group: Belgium.                                   |
| kenya              | The region belongs to the region group: Kenya.                                     |

### cloudPcGeographicLocationType values

| Member             | Description                                                                      |
|:-------------------|:---------------------------------------------------------------------------------|
| default            | The region belongs to the default geographic location.                           |
| asia               | The region belongs to the geographic location: Asia.                             |
| australasia        | The region belongs to the geographic location: Australasia.                      |
| canada             | The region belongs to the geographic location: Canada.                           |
| europe             | The region belongs to the geographic location: Europe.                           |
| india              | The region belongs to the geographic location: India.                            |
| africa             | The region belongs to the geographic location: Africa.                           |
| usCentral          | The region belongs to the geographic location: US Central.                       |
| usEast             | The region belongs to the geographic location: US East.                          |
| usWest             | The region belongs to the geographic location: US West.                          |
| southAmerica       | The region belongs to the geographic location: South America.                    |
| middleEast         | The region belongs to the geographic location: Middle East.                      |
| centralAmerica     | The region belongs to the geographic location: Central America.                  |
| usGovernment       | The region belongs to the geographic location: US government.                    |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                 |
| mexico             | The region belongs to the geographic location: Mexico.                           |

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
