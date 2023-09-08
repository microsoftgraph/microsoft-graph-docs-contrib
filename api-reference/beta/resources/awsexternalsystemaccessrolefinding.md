---
title: "awsExternalSystemAccessRoleFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsExternalSystemAccessRoleFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsExternalSystemAccessRoleFindings](../api/awsexternalsystemaccessrolefinding-list.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) collection|Get a list of the [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) objects and their properties.|
|[Get awsExternalSystemAccessRoleFinding](../api/awsexternalsystemaccessrolefinding-get.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md)|Read the properties and relationships of an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object.|
|[Update awsExternalSystemAccessRoleFinding](../api/awsexternalsystemaccessrolefinding-update.md)|[awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md)|Update the properties of an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object.|
|[Delete awsExternalSystemAccessRoleFinding](../api/awsexternalsystemaccessrolefinding-delete.md)|None|Delete an [awsExternalSystemAccessRoleFinding](../resources/awsexternalsystemaccessrolefinding.md) object.|
|[List awsRole](../api/awsexternalsystemaccessrolefinding-list-role.md)|[awsRole](../resources/awsrole.md) collection|Get the awsRole resources from the role navigation property.|
|[Add awsRole](../api/awsexternalsystemaccessrolefinding-post-role.md)|[awsRole](../resources/awsrole.md)|Add role by posting to the role collection.|
|[Remove awsRole](../api/awsexternalsystemaccessrolefinding-delete-role.md)|None|Remove an [awsRole](../resources/awsrole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibleSystemIds|String collection|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|role|[awsRole](../resources/awsrole.md)|**TODO: Add Description**|

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

