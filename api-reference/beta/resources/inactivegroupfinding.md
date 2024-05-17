---
title: "inactiveGroupFinding resource type"
description: "Contains analytic information for an inactive group in an authorization system, including actions granted to the group and its members in the last 90 days."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# inactiveGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains analytic information for an inactive group in an authorization system, including actions granted to the group and its members in the last 90 days.

Inherits from [finding](../resources/finding.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List inactiveGroupFinding objects](../api/inactivegroupfinding-list.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md) collection|Get a list of the [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects and their properties.|
|[Get inactiveGroupFinding](../api/inactivegroupfinding-get.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md)|Read the properties and relationships of an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to this group identity and actions executed by this group identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the group identity.|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|group|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system that you've onboarded to Permissions Management.|

## JSON representation

The following JSON representation shows the resource type.
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
