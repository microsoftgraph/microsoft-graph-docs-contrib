---
title: "unifiedRole resource type"
description: "The directory roles that can be assigned to a Microsoft partner through a delegated admin relationship."
author: "koravva"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: resourcePageType
---

# unifiedRole resource type
Namespace: microsoft.graph

The directory roles that can be assigned to a Microsoft partner through a delegated admin relationship.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleDefinitionId|String|The unified role definition ID of the directory role. Refer to [unifiedRoleDefinition](../resources/unifiedRoleDefinition.md) resource.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unifiedRole"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRole",
  "roleDefinitionId": "String"
}
```

