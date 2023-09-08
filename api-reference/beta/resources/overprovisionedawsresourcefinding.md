---
title: "overprovisionedAwsResourceFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# overprovisionedAwsResourceFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [identityFinding](../resources/identityfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List overprovisionedAwsResourceFindings](../api/overprovisionedawsresourcefinding-list.md)|[overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) collection|Get a list of the [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) objects and their properties.|
|[Get overprovisionedAwsResourceFinding](../api/overprovisionedawsresourcefinding-get.md)|[overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md)|Read the properties and relationships of an [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) object.|
|[Update overprovisionedAwsResourceFinding](../api/overprovisionedawsresourcefinding-update.md)|[overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md)|Update the properties of an [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) object.|
|[Delete overprovisionedAwsResourceFinding](../api/overprovisionedawsresourcefinding-delete.md)|None|Delete an [overprovisionedAwsResourceFinding](../resources/overprovisionedawsresourcefinding.md) object.|
|[List authorizationSystemIdentity](../api/overprovisionedawsresourcefinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/overprovisionedawsresourcefinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/overprovisionedawsresourcefinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionSummary|[actionSummary](../resources/actionsummary.md)|**TODO: Add Description** Inherited from [identityFinding](../resources/identityfinding.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [identityFinding](../resources/identityfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description** Inherited from [identityFinding](../resources/identityfinding.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.identityFinding](../resources/identityfinding.md)|

## JSON representation
The following is a JSON representation of the resource.
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

