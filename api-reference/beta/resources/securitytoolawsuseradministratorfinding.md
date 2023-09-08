---
title: "securityToolAwsUserAdministratorFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# securityToolAwsUserAdministratorFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityToolAwsUserAdministratorFindings](../api/securitytoolawsuseradministratorfinding-list.md)|[securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) collection|Get a list of the [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) objects and their properties.|
|[Get securityToolAwsUserAdministratorFinding](../api/securitytoolawsuseradministratorfinding-get.md)|[securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md)|Read the properties and relationships of a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object.|
|[Update securityToolAwsUserAdministratorFinding](../api/securitytoolawsuseradministratorfinding-update.md)|[securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md)|Update the properties of a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object.|
|[Delete securityToolAwsUserAdministratorFinding](../api/securitytoolawsuseradministratorfinding-delete.md)|None|Delete a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object.|
|[List authorizationSystemIdentity](../api/securitytoolawsuseradministratorfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/securitytoolawsuseradministratorfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/securitytoolawsuseradministratorfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

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
  "@odata.type": "microsoft.graph.securityToolAwsUserAdministratorFinding",
  "baseType": "microsoft.graph.awsSecurityToolAdministrationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityToolAwsUserAdministratorFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "securityTools": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

