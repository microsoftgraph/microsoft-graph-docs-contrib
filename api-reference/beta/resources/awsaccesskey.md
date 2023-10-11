---
title: "awsAccessKey resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsAccessKey resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAccessKeys](../api/awsidentityaccessmanagementkeyagefinding-list-accesskey.md)|[awsAccessKey](../resources/awsaccesskey.md) collection|Get a list of the [awsAccessKey](../resources/awsaccesskey.md) objects and their properties.|
|[Create awsAccessKey](../api/awsidentityaccessmanagementkeyagefinding-post-accesskey.md)|[awsAccessKey](../resources/awsaccesskey.md)|Create a new [awsAccessKey](../resources/awsaccesskey.md) object.|
|[Get awsAccessKey](../api/awsaccesskey-get.md)|[awsAccessKey](../resources/awsaccesskey.md)|Read the properties and relationships of an [awsAccessKey](../resources/awsaccesskey.md) object.|
|[Update awsAccessKey](../api/awsaccesskey-update.md)|[awsAccessKey](../resources/awsaccesskey.md)|Update the properties of an [awsAccessKey](../resources/awsaccesskey.md) object.|
|[Delete awsAccessKey](../api/awsidentityaccessmanagementkeyagefinding-delete-accesskey.md)|None|Delete an [awsAccessKey](../resources/awsaccesskey.md) object.|
|[List authorizationSystem](../api/awsaccesskey-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsaccesskey-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsaccesskey-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List awsUser](../api/awsaccesskey-list-owner.md)|[awsUser](../resources/awsuser.md) collection|Get the awsUser resources from the owner navigation property.|
|[Add awsUser](../api/awsaccesskey-post-owner.md)|[awsUser](../resources/awsuser.md)|Add owner by posting to the owner collection.|
|[Remove awsUser](../api/awsaccesskey-delete-owner.md)|None|Remove an [awsUser](../resources/awsuser.md) object.|

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
|owner|[awsUser](../resources/awsuser.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsAccessKey",
  "baseType": "microsoft.graph.awsIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsAccessKey",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

