---
title: "awsSecretInformationAccessFinding resource type"
description: "Represents findings for identities who can access secret information."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsSecretInformationAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings for identities who can access secret information.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsSecretInformationAccessFindings](../api/awssecretinformationaccessfinding-list.md)|[awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) collection|Get a list of the [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) objects and their properties.|
|[Get awsSecretInformationAccessFinding](../api/awssecretinformationaccessfinding-get.md)|[awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md)|Read the properties and relationships of an [awsSecretInformationAccessFinding](../resources/awssecretinformationaccessfinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|lastActiveDateTime|DateTimeOffset|A date specifiying when the last time the identity in this Finding accessed a secret store|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity. Supports `$filter` (`gt`) and `$orderby`.|
|secretInformationWebServices|awsSecretInformationWebServices|AWS secret stores which can be accessed by the user, role, resource or serverless function.The possible values are: `secretsManager`, `certificateAuthority`, `cloudHsm`, `certificateManager`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identity|[authorizationSystemIdentity](../resources/authorizationsystemidentity.md)|Represents an identity in an authorization system|

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

