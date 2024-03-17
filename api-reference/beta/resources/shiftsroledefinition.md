---
title: "shiftsRoleDefinition resource type"
description: "A definition for a single role in a schedule in the Shifts app in Teams."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# shiftsRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A definition for a single role in a schedule in the Shifts app in Teams.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get shiftsRoleDefinition](../api/shiftsroledefinition-get.md)|[shiftsRoleDefinition](../resources/shiftsroledefinition.md)|Read the properties and relationships of a [shiftsRoleDefinition](../resources/shiftsroledefinition.md) object.|
|[Set shiftsRoleDefinition](../api/shiftsroledefinition-update.md)|[shiftsRoleDefinition](../resources/shiftsroledefinition.md)|Create/Update the properties of a [shiftsRoleDefinition](../resources/shiftsroledefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the role.|
|displayName|String|The display name of the role.|
|id|String|The ID of the role.|
|shiftsRolePermissions|[shiftsRolePermission](../resources/shiftsrolepermission.md) collection|The collection of role permissions within the role.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.shiftsRoleDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.shiftsRoleDefinition",
  "id": "String (identifier)",
  "description": "String",
  "displayName": "String",
  "shiftsRolePermissions": [
    {
      "@odata.type": "microsoft.graph.shiftsRolePermission"
    }
  ]
}
```

