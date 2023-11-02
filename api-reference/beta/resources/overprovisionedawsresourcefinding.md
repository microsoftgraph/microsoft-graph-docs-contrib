---
title: "overprovisionedAwsResourceFinding resource type"
description: "Represents over-provisioned AWS resources."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# overprovisionedAwsResourceFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents over-provisioned AWS resources.

Inherits from [identityFinding](../resources/identityfinding.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List overprovisionedAwsResourceFindings](../api/overprovisionedawsresourcefinding-list.md)|[overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) collection|Get a list of the [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) objects and their properties.|
|[Get overprovisionedAwsResourceFinding](../api/overprovisionedawsresourcefinding-get.md)|[overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md)|Read the properties and relationships of an [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding executed an authorization system action Inherited from [identityFinding](../resources/identityfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identityInherited from [identityFinding](../resources/identityfinding.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|Inherited from [microsoft.graph.identityFinding](../resources/identityfinding.md)|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.overprovisionedAwsResourceFinding",
  "baseType": "microsoft.graph.identityFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.overprovisionedAwsResourceFinding",
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

