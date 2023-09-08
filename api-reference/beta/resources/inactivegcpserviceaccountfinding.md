---
title: "inactiveGcpServiceAccountFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# inactiveGcpServiceAccountFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [identityFinding](../resources/identityfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveGcpServiceAccountFindings](../api/inactivegcpserviceaccountfinding-list.md)|[inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) collection|Get a list of the [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) objects and their properties.|
|[Get inactiveGcpServiceAccountFinding](../api/inactivegcpserviceaccountfinding-get.md)|[inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md)|Read the properties and relationships of an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object.|
|[Update inactiveGcpServiceAccountFinding](../api/inactivegcpserviceaccountfinding-update.md)|[inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md)|Update the properties of an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object.|
|[Delete inactiveGcpServiceAccountFinding](../api/inactivegcpserviceaccountfinding-delete.md)|None|Delete an [inactiveGcpServiceAccountFinding](../resources/inactivegcpserviceaccountfinding.md) object.|
|[aggregatedSummary](../api/inactivegcpserviceaccountfinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md)|**TODO: Add Description**|
|[List authorizationSystemIdentity](../api/inactivegcpserviceaccountfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/inactivegcpserviceaccountfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/inactivegcpserviceaccountfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

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
  "@odata.type": "microsoft.graph.inactiveGcpServiceAccountFinding",
  "baseType": "microsoft.graph.identityFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveGcpServiceAccountFinding",
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

