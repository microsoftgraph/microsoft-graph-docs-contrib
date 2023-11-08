---
title: "identityFinding resource type"
description: "Represents a finding related to an identity such as a user, role, or function in the authorization system."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# identityFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a finding related to an identity such as a user, role, or function in the authorization system.

Inherits from [finding](../resources/finding.md).

The following resources inherit from this resource type:

- [inactiveawsresourcefinding](../resources/inactiveawsresourcefinding.md)
- [inactiveawsrolefinding](../resources/inactiveawsrolefinding.md)
- [inactiveazureserviceprincipalfinding](../resources/inactiveazureserviceprincipalfinding.md)
- [inactivegcpserviceaccountfinding](../resources/inactivegcpserviceaccountfinding.md)
- [inactivegroupfinding](../resources/inactivegroupfinding.md)
- [inactiveserverlessfunctionfinding](../resources/inactiveserverlessfunctionfinding.md)
- [inactiveuserfinding](../resources/inactiveuserfinding.md)
- [overprovisionedawsresourcefinding](../resources/overprovisionedawsresourcefinding.md)
- [overprovisionedawsrolefinding](../resources/overprovisionedawsrolefinding.md)
- [overprovisionedazureserviceprincipalfinding](../resources/overprovisionedazureserviceprincipalfinding.md)
- [overprovisionedgcpserviceaccountfinding](../resources/overprovisionedgcpserviceaccountfinding.md)
- [overprovisionedserverlessfunctionfinding](../resources/overprovisionedserverlessfunctionfinding.md)
- [overprovisioneduserfinding](../resources/overprovisioneduserfinding.md)
- [superawsresourcefinding](../resources/superawsresourcefinding.md)
- [superawsrolefinding](../resources/superawsrolefinding.md)
- [superazureserviceprincipalfinding](../resources/superazureserviceprincipalfinding.md)
- [supergcpserviceaccountfinding](../resources/supergcpserviceaccountfinding.md)
- [superserverlessfunctionfinding](../resources/superserverlessfunctionfinding.md)
- [superuserfinding](../resources/superuserfinding.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityFindings](../api/identityfinding-list.md)|[identityFinding](../resources/identityfinding.md) collection|Get a list of the [identityFinding](../resources/identityfinding.md) objects and their properties.|
|[Get identityFinding](../api/identityfinding-get.md)|[identityFinding](../resources/identityfinding.md)|Read the properties and relationships of an [identityFinding](../resources/identityfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and might not reflect the current values for the identity. Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Supports `$select`. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this finding executed an authorization system action.|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system. Autoexpanded by default.|

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

