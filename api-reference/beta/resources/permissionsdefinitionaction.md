---
title: "permissionsDefinitionAction resource type"
description: "An abstract complex type that represents the action to take in a permissionsDefinition if the request is approved specific for the AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract complex type that represents the action to take in a **permissionsDefinition** if the request is approved specific for the AWS authorization system.

The following resources inherit from this abstract type:  

- [awsPermissionsDefinitionAction](../resources/awspermissionsdefinitionaction.md) resource type  
- [azurePermissionsDefinitionAction](../resources/azurepermissionsdefinitionaction.md) resource type  
- [gcpPermissionsDefinitionAction](../resources/gcppermissionsdefinitionaction.md) resource type  

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionAction"
}
```

