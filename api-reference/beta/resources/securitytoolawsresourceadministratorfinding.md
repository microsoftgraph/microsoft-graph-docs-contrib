---
title: "securityToolAwsResourceAdministratorFinding resource type"
description: "View AWS resources that can administer security tools."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# securityToolAwsResourceAdministratorFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View AWS resources that can administer security tools.

Inherits from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List securityToolAwsResourceAdministratorFinding objects](../api/securitytoolawsresourceadministratorfinding-list.md)|[securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) collection|Get a list of the [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) objects and their properties.|
|[Get securityToolAwsResourceAdministratorFinding](../api/securitytoolawsresourceadministratorfinding-get.md)|[securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md)|Read the properties and relationships of a [securityToolAwsResourceAdministratorFinding](../resources/securitytoolawsresourceadministratorfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|Defines the last time the identity in this finding executed an authorization system action. Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|    A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`. Inherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).|
|securityTools|awsSecurityToolWebServices|AWS security tools which can be administered by the user, role, resource or serverless functionInherited from [awsSecurityToolAdministrationFinding](../resources/awssecuritytooladministrationfinding.md).The possible values are: `macie`, `wafShield`, `cloudTrail`, `inspector`, `securityHub`, `detective`, `guardDuty`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system onboarded to Permissions Management. Inherited from [identityFinding](../resources/identityfinding.md). Autoexpanded by default.|

## JSON representation
The following JSON representation shows the resource type.
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

