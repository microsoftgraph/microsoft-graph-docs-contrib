---
title: "permissionsCreepIndexDistribution resource type"
description: "Represents the Permissions Creep Index Distribution for the authorization system. PCI distribution chart shows the classification of human and nonhuman identities based on the PCI score in three buckets: low, medium, high)."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsCreepIndexDistribution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Permissions Creep Index Distribution for the authorization system. PCI distribution chart shows the classification of human and non-human identities based on the PCI score in three buckets: low, medium, high.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get permissionsCreepIndexDistribution](../api/permissionscreepindexdistribution-get.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md)|Read the properties and relationships of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the PCI distribution was created.|
|highRiskProfile|[riskProfile](../resources/riskprofile.md)|Defines the human and non-human identities in a high-risk bucket.|
|id|String|Unique identifier for the PCI distribution. Inherited from [entity](../resources/entity.md).|
|lowRiskProfile|[riskProfile](../resources/riskprofile.md)|Defines the human and nonhuman identities in the low-risk bucket.|
|mediumRiskProfile|[riskProfile](../resources/riskprofile.md)|Defines human and nonhuman identities in the medium-risk bucket.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents an authorization system.|

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

