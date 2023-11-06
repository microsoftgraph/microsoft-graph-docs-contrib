---
title: "inactiveGroupFinding resource type"
description: "Contains analytic information for an inactive group in an authorization system, including actions granted to the group and its members in the last 90 days."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
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
|[List inactiveGroupFindings](../api/inactivegroupfinding-list.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md) collection|Get a list of the [inactiveGroupFinding](../resources/inactivegroupfinding.md) objects and their properties.|
|[Get inactiveGroupFinding](../api/inactivegroupfinding-get.md)|[inactiveGroupFinding](../resources/inactivegroupfinding.md)|Read the properties and relationships of an [inactiveGroupFinding](../resources/inactivegroupfinding.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|Contains information on authorization system actions granted to this group identity and actions executed by this group identity in the last 90 days. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the group identity|
|createdDateTime|DateTimeOffset|A date specifiying when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|An index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the group identity. Supports `$filter` (`gt`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|group|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system that you've onboarded to Permissions Management.|

## Supported query patterns
|Pattern|Syntax|Notes|
|Property|Type|Description|
|:---|:---|:---|
|Server-side pagination|@odata.nextLink|Will use EntityFramework MaxPageSize pagination with size 100|
|Filter|/?$filter=identity/authorizationSystem/authorizationSystemId IN ('{id1}', '{id2}',)|filters by authorization systems matching a set of ids|
|Filter|/?$filter=permissionsCreepIndex/score gt 50|Return all findings with PCI scores greater than 50|
|OrderBy|/?$orderBy=permissionsCreepIndex/score desc|Sorts findings by permissionsCreepIndex score in descending order|
|Select|/?$select=actionSummary|Selects field: actionSummary|
|Expand||the group property is auto-expanded|

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
