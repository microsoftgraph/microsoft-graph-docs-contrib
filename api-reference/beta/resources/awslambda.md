---
title: "awsLambda resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsLambda resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsLambdas](../api/awslambda-list.md)|[awsLambda](../resources/awslambda.md) collection|Get a list of the [awsLambda](../resources/awslambda.md) objects and their properties.|
|[Get awsLambda](../api/awslambda-get.md)|[awsLambda](../resources/awslambda.md)|Read the properties and relationships of an [awsLambda](../resources/awslambda.md) object.|
|[Update awsLambda](../api/awslambda-update.md)|[awsLambda](../resources/awslambda.md)|Update the properties of an [awsLambda](../resources/awslambda.md) object.|
|[Delete awsLambda](../api/awslambda-delete.md)|None|Delete an [awsLambda](../resources/awslambda.md) object.|
|[List authorizationSystem](../api/awslambda-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awslambda-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awslambda-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List awsAuthorizationSystemResource](../api/awslambda-list-resource.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Get the awsAuthorizationSystemResource resources from the resource navigation property.|
|[Add awsAuthorizationSystemResource](../api/awslambda-post-resource.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Add resource by posting to the resource collection.|
|[Remove awsAuthorizationSystemResource](../api/awslambda-delete-resource.md)|None|Remove an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|

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
|resource|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsLambda",
  "baseType": "microsoft.graph.awsIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsLambda",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

