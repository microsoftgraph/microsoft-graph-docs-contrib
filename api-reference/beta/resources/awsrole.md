---
title: "awsRole resource type"
description: "Represents AWS roles."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

AWS has the concept of AWS roles and AWS users. An AWS role is similar to an AWS user, in that it is an AWS identity with permission policies that determine what the identity can and cannot do in AWS. However, instead of being uniquely associated with one person, a role is intended to be assumable by anyone who needs it. This entity is used to represent an AWS role.


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get AWS Role](../api/awsrole-get.md)|[awsRole](../resources/awsrole.md)|Read the properties and relationships of an [awsRole](../resources/awsrole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` and (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The externally displayed ID of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|The base64 encoded identifier of externalId. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|trustEntityType|awsRoleTrustEntityType| Types of role trusts. The possible values are: `none`, `service`, `sso`, `crossAccount`, `webIdentity`, `unknownFutureValue`.|
|roleType|awsRoleType|Indicates whether role is a `system` or `custom` role. Supports `$filter` and (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [microsoft.graph.authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

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

