---
title: "securityToolAwsUserAdministratorFinding resource type"
description: "
View AWS Users that can administer security tools."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# securityToolAwsUserAdministratorFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View AWS Users that can administer security tools.


Inherits from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityToolAwsUserAdministratorFindings](../api/securitytoolawsuseradministratorfinding-list.md)|[securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) collection|Get a list of the [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) objects and their properties.|
|[Get securityToolAwsUserAdministratorFinding](../api/securitytoolawsuseradministratorfinding-get.md)|[securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md)|Read the properties and relationships of a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Inherited from [finding](../resources/finding.md).|
|id|String|Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding administered a security tool Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|    Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identityInherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).|
|securityTools|awsSecurityToolWebServices|AWS security tools which can be administered by the user, role, resource or serverless functionInherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).The possible values are: `macie`, `wafShield`, `cloudTrail`, `inspector`, `securityHub`, `detective`, `guardDuty`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization systemInherited from [microsoft.graph.awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md)|

## JSON representation
The following JSON representation shows the resource type.
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

