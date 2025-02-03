---
title: "unifiedRole resource type"
description: "The directory roles that can be assigned to a Microsoft partner through a delegated admin relationship."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: resourcePageType
ms.date: 07/22/2024
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
The following JSON representation shows the resource type.
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

