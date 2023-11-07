---
title: "awsRole resource type"
description: "Represents the findings for AWS roles."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for AWS roles.


Inherits from [awsIdentity](../resources/awsidentity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get awsRole](../api/awsrole-get.md)|[awsRole](../resources/awsrole.md)|Read the properties and relationships of an [awsRole](../resources/awsrole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|externalId|String|The externally displayed ID of the object. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness. Inherited from [entity](../resources/entity.md).|
|source|[authorizationSystemIdentitySource](../resources/authorizationsystemidentityresource.md)|The source of the authorization system identity. Inherited from [authorizationSystemIdentity](../resources/authorizationsystemidentity.md).|
|trustEntityType|awsRoleTrustEntityType| Types of role trusts. The possible values are: `none`, `service`, `sso`, `crossAccount`, `webIdentity`, `unknownFutureValue`.|

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

