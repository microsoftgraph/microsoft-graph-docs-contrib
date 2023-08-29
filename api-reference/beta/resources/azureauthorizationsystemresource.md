---
title: "azureAuthorizationSystemResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureAuthorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemResource](../resources/authorizationsystemresource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureAuthorizationSystemResources](../api/azureauthorizationsystem-list-resources.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) collection|Get a list of the [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) objects and their properties.|
|[Create azureAuthorizationSystemResource](../api/azureauthorizationsystem-post-resources.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Create a new [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object.|
|[Get azureAuthorizationSystemResource](../api/azureauthorizationsystemresource-get.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Read the properties and relationships of an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object.|
|[Update azureAuthorizationSystemResource](../api/azureauthorizationsystemresource-update.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Update the properties of an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object.|
|[Delete azureAuthorizationSystemResource](../api/azureauthorizationsystem-delete-resources.md)|None|Delete an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object.|
|[List authorizationSystem](../api/azureauthorizationsystemresource-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/azureauthorizationsystemresource-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/azureauthorizationsystemresource-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List authorizationSystemTypeService](../api/azureauthorizationsystemresource-list-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the service navigation property.|
|[Add authorizationSystemTypeService](../api/azureauthorizationsystemresource-post-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Add service by posting to the service collection.|
|[Remove authorizationSystemTypeService](../api/azureauthorizationsystemresource-delete-service.md)|None|Remove an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|resourceType|String|**TODO: Add Description** Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemResource](../resources/authorizationsystemresource.md)|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureAuthorizationSystemResource",
  "baseType": "microsoft.graph.authorizationSystemResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAuthorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

