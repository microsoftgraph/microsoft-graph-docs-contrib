---
title: "awsExternalSystemAccessRoleFinding resource type"
description: "Represents the findings for roles that allow for external system access"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsExternalSystemAccessRoleFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for roles that allow for external system access


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsExternalSystemAccessRoleFindings](../api/awsexternalsystemaccessrolefinding-list.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) collection|Get a list of the [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) objects and their properties.|
|[Get awsExternalSystemAccessRoleFinding](../api/awsexternalsystemaccessrolefinding-get.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md)|Read the properties and relationships of an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibleSystemIds|String collection|The ids of the accounts that this role is able to access.|
|createdDateTime|DateTimeOffset|A date specifiying when the Finding was created Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the identity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|role|[awsRole](../resources/awsrole.md)|The role that has access to external accounts.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsExternalSystemAccessRoleFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsExternalSystemAccessRoleFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  },
  "accessibleSystemIds": [
    "String"
  ]
}
```

