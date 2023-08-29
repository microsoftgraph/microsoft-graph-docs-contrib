---
title: "awsAuthorizationSystemResource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsAuthorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemResource](../resources/authorizationsystemresource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystemResources](../api/awsauthorizationsystem-list-resources.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Get a list of the [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) objects and their properties.|
|[Create awsAuthorizationSystemResource](../api/awsauthorizationsystem-post-resources.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Create a new [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|
|[Get awsAuthorizationSystemResource](../api/awsauthorizationsystemresource-get.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Read the properties and relationships of an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|
|[Update awsAuthorizationSystemResource](../api/awsauthorizationsystemresource-update.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Update the properties of an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|
|[Delete awsAuthorizationSystemResource](../api/awsauthorizationsystem-delete-resources.md)|None|Delete an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|
|[List authorizationSystem](../api/awsauthorizationsystemresource-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsauthorizationsystemresource-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsauthorizationsystemresource-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List authorizationSystemTypeService](../api/awsauthorizationsystemresource-list-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the service navigation property.|
|[Add authorizationSystemTypeService](../api/awsauthorizationsystemresource-post-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Add service by posting to the service collection.|
|[Remove authorizationSystemTypeService](../api/awsauthorizationsystemresource-delete-service.md)|None|Remove an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

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
  "@odata.type": "microsoft.graph.awsAuthorizationSystemResource",
  "baseType": "microsoft.graph.authorizationSystemResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsAuthorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

