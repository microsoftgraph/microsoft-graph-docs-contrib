---
title: "awsRole resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsRoles](../api/awsuser-list-assumableroles.md)|[awsRole](../resources/awsrole.md) collection|Get a list of the [awsRole](../resources/awsrole.md) objects and their properties.|
|[Create awsRole](../api/awsuser-post-assumableroles.md)|[awsRole](../resources/awsrole.md)|Create a new [awsRole](../resources/awsrole.md) object.|
|[Get awsRole](../api/awsrole-get.md)|[awsRole](../resources/awsrole.md)|Read the properties and relationships of an [awsRole](../resources/awsrole.md) object.|
|[Update awsRole](../api/awsrole-update.md)|[awsRole](../resources/awsrole.md)|Update the properties of an [awsRole](../resources/awsrole.md) object.|
|[Delete awsRole](../api/awsuser-delete-assumableroles.md)|None|Delete an [awsRole](../resources/awsrole.md) object.|
|[List authorizationSystem](../api/awsrole-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsrole-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsrole-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|roleType|awsRoleType|**TODO: Add Description**.The possible values are: `system`, `custom`, `unknownFutureValue`.|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|**TODO: Add Description** Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|trustEntityType|awsRoleTrustEntityType|**TODO: Add Description**.The possible values are: `none`, `service`, `sso`, `crossAccount`, `webIdentity`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsRole",
  "baseType": "microsoft.graph.awsIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsRole",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String",
  "trustEntityType": "String",
  "roleType": "String"
}
```

