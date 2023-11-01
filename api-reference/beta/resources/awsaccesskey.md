---
title: "awsAccessKey resource type"
description: "**TODO: Add Description**"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
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
The following JSON representation shows the resource type.
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

