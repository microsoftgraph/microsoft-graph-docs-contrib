---
title: "inactiveAwsRoleFinding resource type"
description: "Represents inactive AWS roles."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# inactiveAwsRoleFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents inactive AWS roles.


Inherits from [identityFinding](../resources/identityfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveAwsRoleFinding objects](../api/inactiveawsrolefinding-list.md)|[inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) collection|Get a list of the [inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) objects and their properties.|
|[Get inactiveAwsRoleFinding](../api/inactiveawsrolefinding-get.md)|[inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md)|Read the properties and relationships of an [inactiveAwsRoleFinding](../resources/inactiveawsrolefinding.md) object.|
|[aggregatedSummary](../api/inactiveawsrolefinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md)|Return the total number of an identity type and the total number of a specific finding for that identity in an authorization system.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity. Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Inherited from [entity](../resources/entity.md).|
|identityDetails| [identityDetails](../resources/identitydetails.md)|An identity's information details. Inherited from [identityFinding](../resources/identityfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`. Inherited from [identityFinding](../resources/identityfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system onboarded to Permissions Management. Inherited from [identityFinding](../resources/identityfinding.md). Autoexpanded by default.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveAwsRoleFinding",
  "baseType": "microsoft.graph.identityFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveAwsRoleFinding",
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

