---
title: "securityToolAwsServerlessFunctionAdministratorFinding resource type"
description: "View AWS Serverless functions that can administer security tools."
author: "ashyasingh"
ms.reviewer: ciem_pm
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
|[List securityToolAwsServerlessFunctionAdministratorFinding objects](../api/securitytoolawsserverlessfunctionadministratorfinding-list.md)|[securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) collection|Get a list of the [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) objects and their properties.|
|[Get securityToolAwsServerlessFunctionAdministratorFinding](../api/securitytoolawsserverlessfunctionadministratorfinding-get.md)|[securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md)|Read the properties and relationships of a [securityToolAwsServerlessFunctionAdministratorFinding](../resources/securitytoolawsserverlessfunctionadministratorfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|securityTools|awsSecurityToolWebServices|AWS security tools which can be administered by the user, role, resource or serverless function. Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).The possible values are: `macie`, `wafShield`, `cloudTrail`, `inspector`, `securityHub`, `detective`, `guardDuty`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system. Inherited from [microsoft.graph.awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md)|

## JSON representation
The following JSON representation shows the resource type.
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

