---
title: "azureActionPermissionsDefinitionAction resource type"
description: "Represents findings for Azure actions."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureActionPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings for actions under Azure permissions.


Inherits from [azurePermissionsDefinitionAction](../resources/azurepermissionsdefinitionaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|String collection|List of actions.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureActionPermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureActionPermissionsDefinitionAction",
  "actions": [
    "String"
  ]
}
```

