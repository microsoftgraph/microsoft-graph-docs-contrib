---
title: "gcpRole resource type"
description: "Represents a GCP role in a GCP authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gcpRole resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a GCP role in a GCP authorization system.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpRoles](../api/gcpauthorizationsystem-list-roles.md)|[gcpRole](../resources/gcprole.md) collection|Get a list of the [gcpRole](../resources/gcprole.md) objects and their properties.|
|[Get gcpRole](../api/gcprole-get.md)|[gcpRole](../resources/gcprole.md)|Read the properties and relationships of a [gcpRole](../resources/gcprole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the GCP role. Supports `$filter` and (`eq`,`contains`).|
|externalId|String|The ID of the GCP role as defined by GCP. Alternate key.|
|gcpRoleType|gcpRoleType|The type of GCP role. The possible values are: `system`, `custom`, `unknownFutureValue`. Supports `$filter` and (`eq`).|
|id|String|The ID for the GCP role in Permissions Management. Read-only. Inherited from [entity](../resources/entity.md).|
|scopes|[gcpScope](../resources/gcpscope.md) collection|Resources that an identity assigned this GCP role can perform actions on. Supports `$filter` and (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpRole",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpRole",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "gcpRoleType": "String",
  "scopes": [
    {
      "@odata.type": "microsoft.graph.gcpScope"
    }
  ]
}
```

