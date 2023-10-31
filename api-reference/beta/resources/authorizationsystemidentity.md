---
title: "authorizationSystemIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authorizationSystemIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemIdentities](../api/authorizationsystemidentity-list.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get a list of the [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) objects and their properties.|
|[Get authorizationSystemIdentity](../api/authorizationsystemidentity-get.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Read the properties and relationships of an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|
|[Update authorizationSystemIdentity](../api/authorizationsystemidentity-update.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Update the properties of an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|
|[Delete authorizationSystemIdentity](../api/authorizationsystemidentity-delete.md)|None|Delete an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|
|[List authorizationSystem](../api/authorizationsystemidentity-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/authorizationsystemidentity-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/authorizationsystemidentity-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystemIdentity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

