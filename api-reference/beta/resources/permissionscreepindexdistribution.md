---
title: "permissionsCreepIndexDistribution resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# permissionsCreepIndexDistribution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsCreepIndexDistributions](../api/permissionsanalytics-list-permissionscreepindexdistributions.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) collection|Get a list of the [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) objects and their properties.|
|[Create permissionsCreepIndexDistribution](../api/permissionsanalytics-post-permissionscreepindexdistributions.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md)|Create a new [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|
|[Get permissionsCreepIndexDistribution](../api/permissionscreepindexdistribution-get.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md)|Read the properties and relationships of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|
|[Update permissionsCreepIndexDistribution](../api/permissionscreepindexdistribution-update.md)|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md)|Update the properties of a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|
|[Delete permissionsCreepIndexDistribution](../api/permissionsanalytics-delete-permissionscreepindexdistributions.md)|None|Delete a [permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) object.|
|[List authorizationSystem](../api/permissionscreepindexdistribution-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/permissionscreepindexdistribution-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/permissionscreepindexdistribution-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|highRiskProfile|[riskProfile](../resources/riskprofile.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lowRiskProfile|[riskProfile](../resources/riskprofile.md)|**TODO: Add Description**|
|mediumRiskProfile|[riskProfile](../resources/riskprofile.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description**|

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

