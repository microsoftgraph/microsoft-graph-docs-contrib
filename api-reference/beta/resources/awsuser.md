---
title: "awsUser resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsUser resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsUsers](../api/awsuser-list.md)|[awsUser](../resources/awsuser.md) collection|Get a list of the [awsUser](../resources/awsuser.md) objects and their properties.|
|[Get awsUser](../api/awsuser-get.md)|[awsUser](../resources/awsuser.md)|Read the properties and relationships of an [awsUser](../resources/awsuser.md) object.|
|[Update awsUser](../api/awsuser-update.md)|[awsUser](../resources/awsuser.md)|Update the properties of an [awsUser](../resources/awsuser.md) object.|
|[Delete awsUser](../api/awsuser-delete.md)|None|Delete an [awsUser](../resources/awsuser.md) object.|
|[List assumableRoles](../api/awsuser-list-assumableroles.md)|[awsRole](../resources/awsrole.md) collection|Get the awsRole resources from the assumableRoles navigation property.|
|[Add awsRole](../api/awsuser-post-assumableroles.md)|[awsRole](../resources/awsrole.md)|Add assumableRoles by posting to the assumableRoles collection.|
|[Remove assumableRoles](../api/awsuser-delete-assumableroles.md)|None|Remove an [awsRole](../resources/awsrole.md) object.|
|[List authorizationSystem](../api/awsuser-list-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystem navigation property.|
|[Add authorizationSystem](../api/awsuser-post-authorizationsystem.md)|[authorizationSystem](../resources/authorizationsystem.md)|Add authorizationSystem by posting to the authorizationSystem collection.|
|[Remove authorizationSystem](../api/awsuser-delete-authorizationsystem.md)|None|Remove an [authorizationSystem](../resources/authorizationsystem.md) object.|

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
|assumableRoles|[awsRole](../resources/awsrole.md) collection|**TODO: Add Description**|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsUser",
  "baseType": "microsoft.graph.awsIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsUser",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

