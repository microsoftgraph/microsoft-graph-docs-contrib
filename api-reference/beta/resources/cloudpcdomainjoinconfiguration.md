---
title: "cloudPcDomainJoinConfiguration resource type"
description: "Cloud PC domain join configuration"
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcDomainJoinConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined configuration of how provisioned Cloud PC device will be joined to Azure AD.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|[cloudPcDomainJoinType](#cloudpcdomainjointype-values)|Specifies how the provisioned Cloud PC will be joined to Azure AD. It includes two types, one is `azureADJoin` which means there's no on-premises AD in current tenant and the Cloud PC device will be only joined Azure AD. Another one is `hybridAzureADJoin` which means there's also on-premises AD in current tenant and the Cloud PC device will be joined to on-premises AD and Azure AD. The type also determines which types of users can be assigned and can sign into a Cloud PC. azureADJoin type indicates cloud-only and hybrid users can be assigned and sign into the Cloud PC, hybridAzureADJoin indicates only hybrid user can be assigned and sign into the Cloud PC. The possible values are: `azureADJoin`, `hybridAzureADJoin`.|
|regionName|String|The supported Azure region where IT admin want the provisioning policy to create Cloud PCs. The underlying virtual network will be created and managed by the Windows 365 service. This can only be entered if IT admin choose Azure AD joined as the domain join type. If enter a regionName, leave onPremisesConnectionID as empty.|
|onPremisesConnectionId|String|The On-Premises Connection ID that matches the virtual network IT admin want the provisioning policy to use when creating Cloud PCs. This can be entered for either domain join type (Azure AD joined or Hybrid Azure AD joined). If enter an On-Premises Network Connection ID, leave regionName as empty.|

### cloudPcDomainJoinType values

|Member|Description|
|:---|：---|
|hybridAzureADJoin|Joined only to Azure AD. Cloud-only and hybrid users can be assigned and sign into the Cloud PC.|
|azureADJoin|Joined to on-premises AD and Azure AD. Only hybrid users can be assigned and sign into the Cloud PC.
|unknownFutureValue|Unknown future type.|

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
  "type": "string",
  "regionName": "String",
  "onPremisesConnectionId": "String"
}
```
