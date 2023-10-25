---
title: "securityToolAwsServerlessFunctionAdministratorFinding resource type"
description: "View AWS Serverless functions that can administer security tools."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# securityToolAwsServerlessFunctionAdministratorFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View AWS serverless functions that can administer security tools.


Inherits from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityToolAwsServerlessFunctionAdministratorFindings](../api/securitytoolawsserverlessfunctionadministratorfinding-list.md)|[securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) collection|Get a list of the [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) objects and their properties.|
|[Get securityToolAwsServerlessFunctionAdministratorFinding](../api/securitytoolawsserverlessfunctionadministratorfinding-get.md)|[securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md)|Read the properties and relationships of a [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) object.|
|[Update securityToolAwsServerlessFunctionAdministratorFinding](../api/securitytoolawsserverlessfunctionadministratorfinding-update.md)|[securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md)|Update the properties of a [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) object.|
|[Delete securityToolAwsServerlessFunctionAdministratorFinding](../api/securitytoolawsserverlessfunctionadministratorfinding-delete.md)|None|Delete a [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) object.|
|[List authorizationSystemIdentity](../api/securitytoolawsserverlessfunctionadministratorfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/securitytoolawsserverlessfunctionadministratorfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/securitytoolawsserverlessfunctionadministratorfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

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
  "@odata.type": "microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding",
  "baseType": "microsoft.graph.awsSecurityToolAdministrationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityToolAwsServerlessFunctionAdministratorFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "securityTools": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

