---
title: "awsRole resource type"
description: "Represents AWS role."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AWS role. An AWS role is an AWS identity with permission policies that determine what the identity can and can't do in AWS. However, unlike an AWS user, an AWS role isn't uniquely associated with one person but is assumable by any identity that needs it.

Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List roles](../api/awsassociatedidentities-list-roles.md)|[awsRole](../resources/awsrole.md)|Get a list of the [awsRole](../resources/awsrole.md) objects and their properties.|
|[Get AWS Role](../api/awsrole-get.md)|[awsRole](../resources/awsrole.md)|Read the properties and relationships of an [awsRole](../resources/awsrole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Supports `$filter` (`eq`,`contains`). Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The ID for the role as defined by AWS. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|The ID for the role in Permissions Management. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentitysource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|trustEntityType|awsRoleTrustEntityType| Types of role trusts. The possible values are: `none`, `service`, `sso`, `crossAccount`, `webIdentity`, `unknownFutureValue`.|
|roleType|awsRoleType|Indicates whether role is a `system` or `custom` role. Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|Represents the authorization system. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|

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

