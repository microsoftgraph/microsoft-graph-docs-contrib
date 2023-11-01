---
title: "azureGroup resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [azureIdentity](../resources/azureidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureGroups](../api/azuregroup-list.md)|[azureGroup](../resources/azuregroup.md) collection|Get a list of the [azureGroup](../resources/azuregroup.md) objects and their properties.|
|[Get azureGroup](../api/azuregroup-get.md)|[azureGroup](../resources/azuregroup.md)|Read the properties and relationships of an [azureGroup](../resources/azuregroup.md) object.|
|[Update azureGroup](../api/azuregroup-update.md)|[azureGroup](../resources/azuregroup.md)|Update the properties of an [azureGroup](../resources/azuregroup.md) object.|
|[Delete azureGroup](../api/azuregroup-delete.md)|None|Delete an [azureGroup](../resources/azuregroup.md) object.|
|[List authorizationSystem](../api/azuregroup-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/azuregroup-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/azuregroup-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureGroup",
  "baseType": "microsoft.graph.azureIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureGroup",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

