---
title: "securityToolAwsResourceAdministratorFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# securityToolAwsResourceAdministratorFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityToolAwsResourceAdministratorFindings](../api/securitytoolawsresourceadministratorfinding-list.md)|[securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) collection|Get a list of the [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) objects and their properties.|
|[Get securityToolAwsResourceAdministratorFinding](../api/securitytoolawsresourceadministratorfinding-get.md)|[securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md)|Read the properties and relationships of a [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) object.|
|[Update securityToolAwsResourceAdministratorFinding](../api/securitytoolawsresourceadministratorfinding-update.md)|[securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md)|Update the properties of a [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) object.|
|[Delete securityToolAwsResourceAdministratorFinding](../api/securitytoolawsresourceadministratorfinding-delete.md)|None|Delete a [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) object.|
|[List authorizationSystemIdentity](../api/securitytoolawsresourceadministratorfinding-list-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md) collection|Get the authorizationSystemIdentity resources from the identity navigation property.|
|[Add authorizationSystemIdentity](../api/securitytoolawsresourceadministratorfinding-post-identity.md)|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Add identity by posting to the identity collection.|
|[Remove authorizationSystemIdentity](../api/securitytoolawsresourceadministratorfinding-delete-identity.md)|None|Remove an [authorizationSystemIdentity](../resources/authorizationsystemidentity.md) object.|

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
  "@odata.type": "microsoft.graph.securityToolAwsResourceAdministratorFinding",
  "baseType": "microsoft.graph.awsSecurityToolAdministrationFinding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityToolAwsResourceAdministratorFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "securityTools": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

