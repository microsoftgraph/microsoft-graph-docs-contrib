---
title: "identityFinding resource type"
description: "Represents a finding related to an identity such as a user, role, or function in the authorization system."
author: "ashyasingh"
ms.reviewer: ciem_pm
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
- [unenforcedMfaAwsUserFinding](../resources/unenforcedmfaawsuserfinding.md)

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and might not reflect the current values for the identity. Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Supports `$select`. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|identityDetails| [identityDetails](../resources/identitydetails.md)|An identity's information details.|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|epresents an identity in an authorization system onboarded to Permissions Management. Autoexpanded by default.|

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
  "identityDetails": {
    "@odata.type": "#microsoft.graph.identityDetails"
  },
  "actionSummary": {
    "@odata.type": "microsoft.graph.actionSummary"
  }
}
```

