---
title: "identityFinding resource type"
description: "An identityFinding is a finding that contains information about an identity (user, role, function etc.)."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# identityFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An identityFinding is a finding that contains information about an identity (user, role, function etc.).

Inherits from [finding](../resources/finding.md).

The following objects inherit from this resource type:
[inactiveawsresourcefinding](../resources/inactiveawsresourcefinding.md)
[inactiveawsrolefinding](../resources/inactiveawsrolefinding.md)
[inactiveazureserviceprincipalfinding](../resources/inactiveazureserviceprincipalfinding.md)
[inactivegcpserviceaccountfinding](../resources/inactivegcpserviceaccountfinding.md)
[inactivegroupfinding](../resources/inactivegroupfinding.md)
[inactiveserverlessfunctionfinding](../resources/inactiveserverlessfunctionfinding.md)
[inactiveuserfinding](../resources/inactiveuserfinding.md)

[overprovisionedawsresourcefinding](../resources/overprovisionedawsresourcefinding.md)
[overprovisionedawsrolefinding](../resources/overprovisionedawsrolefinding.md)
[overprovisionedazureserviceprincipalfinding](../resources/overprovisionedazureserviceprincipalfinding.md)
[overprovisionedgcpserviceaccountfinding](../resources/overprovisionedgcpserviceaccountfinding.md)
[overprovisionedserverlessfunctionfinding](../resources/overprovisionedserverlessfunctionfinding.md)
[overprovisioneduserfinding](../resources/overprovisioneduserfinding.md)

[superawsresourcefinding](../resources/superawsresourcefinding.md)
[superawsrolefinding](../resources/superawsrolefinding.md)
[superazureserviceprincipalfinding](../resources/superazureserviceprincipalfinding.md)
[supergcpserviceaccountfinding](../resources/supergcpserviceaccountfinding.md)
[superserverlessfunctionfinding](../resources/superserverlessfunctionfinding.md)
[superuserfinding](../resources/superuserfinding.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityFindings](../api/identityfinding-list.md)|[identityFinding](../resources/identityfinding.md) collection|Get a list of the [identityFinding](../resources/identityfinding.md) objects and their properties.|
|[Get identityFinding](../api/identityfinding-get.md)|[identityFinding](../resources/identityfinding.md)|Read the properties and relationships of an [identityFinding](../resources/identityfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this finding executed an authorization system action.|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity. Supports `$filter` (`gt`) and `$orderby`.|

## Supported query patterns
|Pattern|Syntax|Notes|
|Property|Type|Description|
|:---|:---|:---|
|Server-side pagination|@odata.nextLink|Will use EntityFramework MaxPageSize pagination with size 100|
|Filter|/?$filter=identity/authorizationSystem/authorizationSystemId IN ('{id1}', '{id2}',)|filters by authorization systems matching a set of ids|
|Filter|/?$filter=permissionsCreepIndex/score gt 50|Return all findings with PCI scores greater than 50|
|OrderBy|/?$orderBy=permissionsCreepIndex/score desc|Sorts findings by permissionsCreepIndex score in descending order|
|Select|/?$select=createdDateTime|Selects field: createdDateTime|
|Expand||the identity property is auto-expanded|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityFinding",
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

