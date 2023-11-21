---
title: "superGcpServiceAccountFinding resource type"
description: "Represents the super GCP service accounts."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# superGcpServiceAccountFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the super GCP service accounts.

Inherits from [identityFinding](../resources/identityfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List superGcpServiceAccountFinding objects](../api/supergcpserviceaccountfinding-list.md)|[superGcpServiceAccountFinding](../resources/supergcpserviceaccountfinding.md) collection|Get a list of the [superGcpServiceAccountFinding](../resources/supergcpserviceaccountfinding.md) objects and their properties.|
|[Get superGcpServiceAccountFinding](../api/supergcpserviceaccountfinding-get.md)|[superGcpServiceAccountFinding](../resources/supergcpserviceaccountfinding.md)|Read the properties and relationships of a [superGcpServiceAccountFinding](../resources/supergcpserviceaccountfinding.md) object.|
|[aggregatedSummary](../api/supergcpserviceaccountfinding-aggregatedsummary.md)|[permissionsAnalyticsAggregatedIdentitySummary](../resources/permissionsanalyticsaggregatedidentitysummary.md)|Return the total number of an identity type and the total number of a specific finding for that identity in an authorization system.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and might not reflect the current values for the identity. Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
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
  "@odata.type": "microsoft.graph.superGcpServiceAccountFinding",
  "baseType": "microsoft.graph.identityFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.superGcpServiceAccountFinding",
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

