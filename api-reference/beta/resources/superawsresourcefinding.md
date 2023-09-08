---
title: "superAwsResourceFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# superAwsResourceFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [identityFinding](../resources/identityfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List superAwsResourceFindings](../api/superawsresourcefinding-list.md)|[superAwsResourceFinding](../resources/superawsresourcefinding.md) collection|Get a list of the [superAwsResourceFinding](../resources/superawsresourcefinding.md) objects and their properties.|
|[Get superAwsResourceFinding](../api/superawsresourcefinding-get.md)|[superAwsResourceFinding](../resources/superawsresourcefinding.md)|Read the properties and relationships of a [superAwsResourceFinding](../resources/superawsresourcefinding.md) object.|
|[Update superAwsResourceFinding](../api/superawsresourcefinding-update.md)|[superAwsResourceFinding](../resources/superawsresourcefinding.md)|Update the properties of a [superAwsResourceFinding](../resources/superawsresourcefinding.md) object.|
|[Delete superAwsResourceFinding](../api/superawsresourcefinding-delete.md)|None|Delete a [superAwsResourceFinding](../resources/superawsresourcefinding.md) object.|
|[aggregatedSummary](../api/superawsresourcefinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md)|**TODO: Add Description**|
|[List authorizationSystemIdentity](../api/superawsresourcefinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/superawsresourcefinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/superawsresourcefinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|**TODO: Add Description** Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [identityFinding](../resources/identityfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description** Inherited from [identityFinding](../resources/identityfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.identityFinding](../resources/identityfinding.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.superAwsResourceFinding",
  "baseType": "microsoft.graph.identityFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.superAwsResourceFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)",
  "actionSummary": {
    "@odata.type": "microsoft.graph.actionSummary"
  }
}
```

