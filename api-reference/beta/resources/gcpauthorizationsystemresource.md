---
title: "gcpAuthorizationSystemResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpAuthorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemResource](../resources/authorizationsystemresource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystemResources](../api/gcpauthorizationsystem-list-resources.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|Get a list of the [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) objects and their properties.|
|[Create gcpAuthorizationSystemResource](../api/gcpauthorizationsystem-post-resources.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|Create a new [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.|
|[Get gcpAuthorizationSystemResource](../api/gcpauthorizationsystemresource-get.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|Read the properties and relationships of a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.|
|[Update gcpAuthorizationSystemResource](../api/gcpauthorizationsystemresource-update.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|Update the properties of a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.|
|[Delete gcpAuthorizationSystemResource](../api/gcpauthorizationsystem-delete-resources.md)|None|Delete a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.|
|[List authorizationSystem](../api/gcpauthorizationsystemresource-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/gcpauthorizationsystemresource-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/gcpauthorizationsystemresource-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List authorizationSystemTypeService](../api/gcpauthorizationsystemresource-list-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the service navigation property.|
|[Add authorizationSystemTypeService](../api/gcpauthorizationsystemresource-post-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Add service by posting to the service collection.|
|[Remove authorizationSystemTypeService](../api/gcpauthorizationsystemresource-delete-service.md)|None|Remove an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

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
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemResource",
  "baseType": "microsoft.graph.authorizationSystemResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

