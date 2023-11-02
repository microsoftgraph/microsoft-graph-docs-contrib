---
title: "permissionsCreepIndexDistribution resource type"
description: "Represents the Permissions Creep Index Distribution for the authorization system. PCI distribution chart shows the classification of human and non-human identities based on the PCI score in three buckets (low, medium, high)."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsCreepIndexDistribution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Permissions Creep Index Distribution for the authorization system. PCI distribution chart shows the classification of human and non-human identities based on the PCI score in three buckets (low, medium, high).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsCreepIndexDistributions](../api/permissionsanalytics-list-permissionscreepindexdistributions.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) collection|Get a list of the [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) objects and their properties.|
|[Create permissionsCreepIndexDistribution](../api/permissionsanalytics-post-permissionscreepindexdistributions.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md)|Create a new [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|
|[Get permissionsCreepIndexDistribution](../api/permissionscreepindexdistribution-get.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md)|Read the properties and relationships of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the PCI distribution was created|
|highRiskProfile|[riskProfile](../resources/riskprofile.md)|human and non-human identities in high-risk bucket|
|id|String|Unique identifier for the PCI distribution Inherited from [entity](../resources/entity.md).|
|lowRiskProfile|[riskProfile](../resources/riskprofile.md)|human and non-human identities in low-risk bucket|
|mediumRiskProfile|[riskProfile](../resources/riskprofile.md)|human and non-human identities in medium-risk bucket|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents an authorization system|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsCreepIndexDistribution",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsCreepIndexDistribution",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lowRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  },
  "mediumRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  },
  "highRiskProfile": {
    "@odata.type": "microsoft.graph.riskProfile"
  }
}
```

