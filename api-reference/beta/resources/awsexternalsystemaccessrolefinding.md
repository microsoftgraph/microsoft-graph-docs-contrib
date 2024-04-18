---
title: "awsExternalSystemAccessRoleFinding resource type"
description: "Represents the findings for roles that allow for external system access."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsExternalSystemAccessRoleFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for roles that allow for external system access.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsExternalSystemAccessRoleFinding objects](../api/awsexternalsystemaccessrolefinding-list.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) collection|Get a list of the [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) objects and their properties.|
|[Get awsExternalSystemAccessRoleFinding](../api/awsexternalsystemaccessrolefinding-get.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md)|Read the properties and relationships of an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibleSystemIds|String collection|The IDs of the accounts that this role is able to access.|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|role|[awsRole](../resources/awsrole.md)|The role that has access to external accounts. Supports `$orderby` (for `role/displayName`) and `$filter` as follows: `$filter=role/authorizationSystem/authorizationSystemId IN ['authorizationSystemIds']` and `$filter=role/authorizationSystem/authorizationSystemName eq 'authsystemname'`. Autoexpanded by default.|

## JSON representation
The following JSON representation shows the resource type.
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

