---
title: "cloudPcDomainJoinConfiguration resource type"
description: "Represents a defined configuration of how a provisioned Cloud PC device joins to Microsoft Entra ID."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDomainJoinConfiguration resource type

Namespace: microsoft.graph

Represents a defined configuration of how a provisioned Cloud PC device joins to Microsoft Entra ID.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|domainJoinType|[cloudPcDomainJoinType](../resources/cloudpcdomainjoinconfiguration.md#cloudpcdomainjointype-values)|Specifies the method by which the provisioned Cloud PC joins Microsoft Entra ID. If you choose the `hybridAzureADJoin` type, only provide a value for the **onPremisesConnectionId** property and leave the **regionName** property empty. If you choose the `azureADJoin` type, provide a value for either the **onPremisesConnectionId** or the **regionName** property. Possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`.|
|onPremisesConnectionId|String|The Azure network connection ID that matches the virtual network IT admins want the provisioning policy to use when they create Cloud PCs. You can use this property in both domain join types: _Azure AD joined_ or _Hybrid Microsoft Entra joined_. If you enter an **onPremisesConnectionId**, leave the **regionName** property empty.|
|regionGroup|[cloudPcRegionGroup](../resources/cloudpcdomainjoinconfiguration.md#cloudpcregiongroup-values)|The logical geographic group this region belongs to. Multiple regions can belong to one region group. A customer can select a **regionGroup** when they provision a Cloud PC, and the Cloud PC is put in one of the regions in the group based on resource status. For example, the Europe region group contains the Northern Europe and Western Europe regions. Possible values are: `default`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `unknownFutureValue`, `norway`, `switzerland`, `southKorea`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `norway`, `switzerland`, `southKorea`. Read-only.|
|regionName|String|The supported Azure region where the IT admin wants the provisioning policy to create Cloud PCs. Within this region, the Windows 365 service creates and manages the underlying virtual network. This option is available only when the IT admin selects _Microsoft Entra joined_ as the domain join type. If you enter a **regionName**, leave the **onPremisesConnectionId** property empty.|

### cloudPcDomainJoinType values

| Member             | Description                                                                                                                  |
|:-------------------|:-----------------------------------------------------------------------------------------------------------------------------|
| azureADJoin        | Joined only to Microsoft Entra ID. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.                   |
| hybridAzureADJoin  | Joined to on-premises Active Directory and Microsoft Entra ID. Only hybrid users can be assigned and sign into the Cloud PC. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                                                             |

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
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.                                   |
| norway             | The region belongs to the region group: Norway.                                    |
| switzerland        | The region belongs to the region group: Switzerland.                               |
| southKorea         | The region belongs to the region group: South Korea.                               |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinConfiguration",
  "domainJoinType": "String",
  "onPremisesConnectionId": "String",
  "regionGroup": "String",
  "regionName": "String"
}
```
