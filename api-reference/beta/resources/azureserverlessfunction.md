---
title: "azureServerlessFunction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureServerlessFunction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [azureIdentity](../resources/azureidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureServerlessFunctions](../api/azureserverlessfunction-list.md)|[azureServerlessFunction](../resources/azureserverlessfunction.md) collection|Get a list of the [azureServerlessFunction](../resources/azureserverlessfunction.md) objects and their properties.|
|[Get azureServerlessFunction](../api/azureserverlessfunction-get.md)|[azureServerlessFunction](../resources/azureserverlessfunction.md)|Read the properties and relationships of an [azureServerlessFunction](../resources/azureserverlessfunction.md) object.|
|[Update azureServerlessFunction](../api/azureserverlessfunction-update.md)|[azureServerlessFunction](../resources/azureserverlessfunction.md)|Update the properties of an [azureServerlessFunction](../resources/azureserverlessfunction.md) object.|
|[Delete azureServerlessFunction](../api/azureserverlessfunction-delete.md)|None|Delete an [azureServerlessFunction](../resources/azureserverlessfunction.md) object.|
|[List authorizationSystem](../api/azureserverlessfunction-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/azureserverlessfunction-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/azureserverlessfunction-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List azureAuthorizationSystemResource](../api/azureserverlessfunction-list-resource.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) collection|Get the azureAuthorizationSystemResource resources from the resource navigation property.|
|[Add azureAuthorizationSystemResource](../api/azureserverlessfunction-post-resource.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Add resource by posting to the resource collection.|
|[Remove azureAuthorizationSystemResource](../api/azureserverlessfunction-delete-resource.md)|None|Remove an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object.|

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
|resource|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureServerlessFunction",
  "baseType": "microsoft.graph.azureIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureServerlessFunction",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

