---
title: "awsSecretInformationAccessFinding resource type"
description: "Represents findings for identities who can access secret information."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsSecretInformationAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings for identities who can access secret information.

Inherits from [finding](../resources/finding.md).

The following resources inherit from this resource type:

- [secretInformationAccessAwsResourceFinding](../resources/secretinformationaccessawsresourcefinding.md)
- [secretInformationAccessAwsRoleFinding](../resources/secretinformationaccessawsrolefinding.md)
- [secretInformationAccessAwsServerlessFunctionFinding](../resources/secretinformationaccessawsserverlessfunctionfinding.md)
- [secretInformationAccessAwsUserFinding](../resources/secretinformationaccessawsuserfinding.md)

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding accessed a secret store|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`.|
|secretInformationWebServices|awsSecretInformationWebServices|AWS secret stores which can be accessed by the user, role, resource or serverless function.The possible values are: `secretsManager`, `certificateAuthority`, `cloudHsm`, `certificateManager`, `unknownFutureValue`. Supports `$filter` (`has`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system onboarded to Permissions Management. Inherited from [identityFinding](../resources/identityfinding.md). Autoexpanded by default. <br/><br/>Supports `$filter` as follows: `$filter=identity/authorizationSystem/authorizationSystemId IN ('id1', 'id2')`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsSecretInformationAccessFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsSecretInformationAccessFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "secretInformationWebServices": "String",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "lastActiveDateTime": "String (timestamp)"
}
```

