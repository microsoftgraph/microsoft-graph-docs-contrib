---
title: "inactiveGroupFinding resource type"
description: "Contains information on a group, its authorization system, and actions granted to this group along with how many of these actions were executed by this group identity in the last 90 days."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# inactiveGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An inactiveGroupFinding contains information on a group, its authorization system, and information on authorization system actions granted to this group identity along with how many of these actions were executed by this group identity in the last 90 days.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveGroupFindings](../api/inactivegroupfinding-list.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md) collection|Get a list of the [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects and their properties.|
|[Get inactiveGroupFinding](../api/inactivegroupfinding-get.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md)|Read the properties and relationships of an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to this group identity and actions executed by this group identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the group identity|
|createdDateTime|DateTimeOffset|Inherited from [finding](../resources/finding.md).|
|id|String|Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the group identity. Supports `$filter` (`gt`) and `$orderby`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.inactiveGroupFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inactiveGroupFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "actionSummary": {
    "@odata.type": "microsoft.graph.actionSummary"
  },
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  }
}
```
