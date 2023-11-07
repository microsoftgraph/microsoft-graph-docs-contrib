---
title: "awsAccessKey resource type"
description: "Represents the findings for AWS access keys."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsAccessKey resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for AWS access keys.

Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAccessKeys](../api/awsidentityaccessmanagementkeyagefinding-list-accesskey.md)|[awsAccessKey](../resources/awsaccesskey.md) collection|Get a list of the [awsAccessKey](../resources/awsaccesskey.md) objects and their properties.|
|[Get awsAccessKey](../api/awsaccesskey-get.md)|[awsAccessKey](../resources/awsaccesskey.md)|Read the properties and relationships of an [awsAccessKey](../resources/awsaccesskey.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The externally displayed ID of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentityresource.md)|The sourceof the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|
|owner|[awsUser](../resources/awsuser.md)|Represents the owner.|

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

