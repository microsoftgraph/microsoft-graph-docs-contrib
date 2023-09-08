---
title: "securityToolAwsRoleAdministratorFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# securityToolAwsRoleAdministratorFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityToolAwsRoleAdministratorFindings](../api/securitytoolawsroleadministratorfinding-list.md)|[securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) collection|Get a list of the [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) objects and their properties.|
|[Get securityToolAwsRoleAdministratorFinding](../api/securitytoolawsroleadministratorfinding-get.md)|[securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md)|Read the properties and relationships of a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object.|
|[Update securityToolAwsRoleAdministratorFinding](../api/securitytoolawsroleadministratorfinding-update.md)|[securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md)|Update the properties of a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object.|
|[Delete securityToolAwsRoleAdministratorFinding](../api/securitytoolawsroleadministratorfinding-delete.md)|None|Delete a [securityToolAwsRoleAdministratorFinding](../resources/securitytoolawsroleadministratorfinding.md) object.|
|[List authorizationSystemIdentity](../api/securitytoolawsroleadministratorfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/securitytoolawsroleadministratorfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/securitytoolawsroleadministratorfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description** Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).|
|securityTools|awsSecurityToolWebServices|**TODO: Add Description** Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).The possible values are: `macie`, `wafShield`, `cloudTrail`, `inspector`, `securityHub`, `detective`, `guardDuty`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|**TODO: Add Description** Inherited from [microsoft.graph.awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityToolAwsRoleAdministratorFinding",
  "baseType": "microsoft.graph.awsSecurityToolAdministrationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityToolAwsRoleAdministratorFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "securityTools": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

