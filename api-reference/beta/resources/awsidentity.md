---
title: "awsIdentity resource type"
description: "Represents identities in AWS."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents AWS identities including access keys, EC2 instances, groups, lambda functions, roles, and users.

Inherits from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).

The following resources inherit from this resource type:

- [awsAccessKey](awsaccesskey.md)
- [awsEc2Instance](awsec2instance.md)
- [awsGroup](awsgroup.md)
- [awsLambda](awslambda.md)
- [awsRole](awsrole.md)
- [awsUser](awsuser.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List AWS Identities](../api/awsassociatedidentities-list-all.md)|[awsIdentity](../resources/awsidentity.md)|Read the properties and relationships of an [awsIdentity](../resources/awsidentity.md) object.|
|[Get AWS Identity](../api/awsidentity-get.md)|[awsIdentity](../resources/awsidentity.md)|Read the properties and relationships of an [awsIdentity](../resources/awsidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` and (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The externally displayed ID of the object. Supports`$filter` and (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|The base64 encoded identifier of externalId. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsIdentity",
  "baseType": "microsoft.graph.authorizationSystemIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "source": {
    "@odata.type": "microsoft.graph.authorizationSystemIdentitySource"
  },
  "externalId": "String"
}
```

