---
title: "cloudPcDomainJoinConfiguration resource type"
description: "Represents a defined configuration of how a provisioned Cloud PC device will be joined to Azure Active Directory."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDomainJoinConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined configuration of how a provisioned Cloud PC device will be joined to Azure Active Directory (Azure AD).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|onPremisesConnectionId|String|The Azure network connection ID that matches the virtual network IT admins want the provisioning policy to use when they create Cloud PCs. You can use this property in both domain join types: _Azure AD joined_ or _Hybrid Azure AD joined_. If you enter an **onPremisesConnectionId**, leave **regionName** as empty.|
|regionGroup|[cloudPcRegionGroup](../resources/cloudpcsupportedregion.md#cloudpcregiongroup-values)|The logical geographic group this region belongs to. Multiple regions can belong to one region group. A customer can select a **regionGroup** when provisioning a Cloud PC, and the Cloud PC will be put in one of the regions in the group based on resource status. For example, the Europe region group contains the Northern Europe and Western Europe regions. Possible values are: `default`, `australia`, `canada`, `usCentral`, `usEast`, `usWest`, `france`, `germany`, `europeUnion`, `unitedKingdom`, `japan`, `asia`, `india`, `southAmerica`, `euap`, `usGovernment`, `usGovernmentDOD`, `unknownFutureValue`, `norway`, `switzerland`, and `southKorea`. Read-only.|
|regionName|String|The supported Azure region where the IT admin wants the provisioning policy to create Cloud PCs. The underlying virtual network will be created and managed by the Windows 365 service. This can only be entered if the IT admin chooses Azure AD joined as the domain join type. If you enter a **regionName**, leave **onPremisesConnectionId** as empty.|
|type|[cloudPcDomainJoinType](#cloudpcdomainjointype-values)|Specifies how the provisioned Cloud PC will be joined to Azure AD. If you choose the `hybridAzureADJoin` type, only provide a value for the **onPremisesConnectionId** property and leave **regionName** as empty. If you choose the `azureADJoin` type, provide a value for either **onPremisesConnectionId** or **regionName**. The possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`.|


### cloudPcDomainJoinType values

|Member|Description|
|:---|:---|
|azureADJoin|Joined only to Azure AD. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.|
|hybridAzureADJoin|Joined to on-premises AD and Azure AD. Only hybrid users can be assigned and sign into the Cloud PC.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcDomainJoinConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcDomainJoinConfiguration",
  "type": "String",
  "regionName": "String",
  "onPremisesConnectionId": "String",
  "regionGroup": {
    "@odata.type": "#microsoft.graph.cloudPcRegionGroup"
  }
}
```
