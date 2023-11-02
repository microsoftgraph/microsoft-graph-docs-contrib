---
title: "inactiveAzureServicePrincipalFinding resource type"
description: "Represents the inactive Azure service principals."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# inactiveAzureServicePrincipalFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the inactive Azure service principals.


Inherits from [identityFinding](../resources/identityfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveAzureServicePrincipalFindings](../api/inactiveazureserviceprincipalfinding-list.md)|[inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) collection|Get a list of the [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) objects and their properties.|
|[Get inactiveAzureServicePrincipalFinding](../api/inactiveazureserviceprincipalfinding-get.md)|[inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md)|Read the properties and relationships of an [inactiveAzureServicePrincipalFinding](../resources/inactiveazureserviceprincipalfinding.md) object.|
|[aggregatedSummary](../api/inactiveazureserviceprincipalfinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md)|Return the total number of an identity type and the total number of a specific finding for that identity in an authorization system.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding executed an authorization system action Inherited from [identityFinding](../resources/identityfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|This value represents how much risk an identity poses. This risk range is classified in three buckets: 0-33: low, 34-66: medium, 67-100: high Inherited from [identityFinding](../resources/identityfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|Inherited from [microsoft.graph.identityFinding](../resources/identityfinding.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveAzureServicePrincipalFinding",
  "baseType": "microsoft.graph.identityFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveAzureServicePrincipalFinding",
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

