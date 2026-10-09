---
title: "cloudPcProvisioningConfiguration resource type"
description: "Represents the policy-derived configuration applied to a Cloud PC during provisioning."
author: "danipocket"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2026
---

# cloudPcProvisioningConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy-derived configuration applied to a Cloud PC during provisioning. Contains properties inherited from the provisioning policy that were applied during the most recent provisioning or reprovisioning.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|domainJoinType|[cloudPcDomainJoinType](../resources/cloudpcdomainjoinconfiguration.md#cloudpcdomainjointype-values)|Specifies the method by which the Cloud PC is joined to Microsoft Entra ID. The possible values are: `azureADJoin`, `hybridAzureADJoin`, `unknownFutureValue`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcProvisioningConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningConfiguration",
  "domainJoinType": "String"
}
```
