---
title: "cloudPcDomainJoinConfiguration resource type"
description: "Represents a defined configuration of how a provisioned Cloud PC device joins to Microsoft Entra ID."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDomainJoinConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined configuration of how a provisioned Cloud PC device joins to Microsoft Entra ID.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|domainJoinType|[cloudPcDomainJoinType](#cloudpcdomainjointype-values)|Specifies the method by which the provisioned Cloud PC joins Microsoft Entra ID. If you choose the `hybridAzureADJoin` type, only provide a value for the **onPremisesConnectionId** property and leave the **regionName** property empty. If you choose the `azureADJoin` type, provide a value for either the **onPremisesConnectionId** or the **regionName** property. Possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`.|
|onPremisesConnectionId|String|The Azure network connection ID that matches the virtual network IT admins want the provisioning policy to use when they create Cloud PCs. You can use this property in both domain join types: _Azure AD joined_ or _Hybrid Microsoft Entra joined_. If you enter an **onPremisesConnectionId**, leave the **regionName** property empty.|
|regionGroup|[cloudPcRegionGroup](../resources/cloudpcsupportedregion.md#cloudpcregiongroup-values)|The logical geographic group this region belongs to. Multiple regions can belong to one region group. A customer can select a **regionGroup** when they provision a Cloud PC, and the Cloud PC is put in one of the regions in the group based on resource status. For example, the Europe region group contains the Northern Europe and Western Europe regions. Possible values are: `default`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `unknownFutureValue`, `norway`, `switzerland`, and `southKorea`. Read-only.|
|regionName|String|The supported Azure region where the IT admin wants the provisioning policy to create Cloud PCs. The underlying virtual network is created and managed by the Windows 365 service. This can only be entered if the IT admin chooses Microsoft Entra joined as the domain join type. If you enter a **regionName**, leave the **onPremisesConnectionId** property empty.|
|type (deprecated)|[cloudPcDomainJoinType](#cloudpcdomainjointype-values)|Specifies the method by which the provisioned Cloud PC joins Microsoft Entra ID. If you choose the `hybridAzureADJoin` type, only provide a value for the **onPremisesConnectionId** property and leave **regionName** as empty. If you choose the `azureADJoin` type, provide a value for either **onPremisesConnectionId** or **regionName**. The possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`. The **type** property is deprecated and will stop returning data on January 31, 2024. Going forward, use the **domainJoinType** property.|


### cloudPcDomainJoinType values

|Member|Description|
|:---|:---|
|azureADJoin|Joined only to Microsoft Entra ID. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.|
|hybridAzureADJoin|Joined to on-premises Active Directory and Microsoft Entra ID. Only hybrid users can be assigned and sign into the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

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
  "regionGroup": {"@odata.type": "#microsoft.graph.cloudPcRegionGroup"},
  "regionName": "String",
  "type": "String"
}
```
