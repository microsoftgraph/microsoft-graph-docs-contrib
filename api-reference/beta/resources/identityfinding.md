---
title: "identityFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# identityFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identityFindings](../api/identityfinding-list.md)|[identityFinding](../resources/identityfinding.md) collection|Get a list of the [identityFinding](../resources/identityfinding.md) objects and their properties.|
|[Get identityFinding](../api/identityfinding-get.md)|[identityFinding](../resources/identityfinding.md)|Read the properties and relationships of an [identityFinding](../resources/identityfinding.md) object.|
|[Update identityFinding](../api/identityfinding-update.md)|[identityFinding](../resources/identityfinding.md)|Update the properties of an [identityFinding](../resources/identityfinding.md) object.|
|[Delete identityFinding](../api/identityfinding-delete.md)|None|Delete an [identityFinding](../resources/identityfinding.md) object.|
|[List authorizationSystemIdentity](../api/identityfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/identityfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/identityfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description**|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description**|

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

