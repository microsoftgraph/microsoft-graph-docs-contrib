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

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityFindings](../api/identityfinding-list.md)|[identityFinding](../resources/identityfinding.md) collection|Get a list of the [identityFinding](../resources/identityfinding.md) objects and their properties.|
|[Get identityFinding](../api/identityfinding-get.md)|[identityFinding](../resources/identityfinding.md)|Read the properties and relationships of an [identityFinding](../resources/identityfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|Contains information on authorization system actions granted to an identity and actions executed by this identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding executed an authorization system action|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity|

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

