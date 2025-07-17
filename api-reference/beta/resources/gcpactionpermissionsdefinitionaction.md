---
title: "gcpActionPermissionsDefinitionAction resource type"
description: "Represents actions for permissions in GCP."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# gcpActionPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Represents actions for permissions in GCP.

Inherits from [gcpPermissionsDefinitionAction](../resources/gcppermissionsdefinitionaction.md).

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
  "@odata.type": "microsoft.graph.gcpActionPermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpActionPermissionsDefinitionAction",
  "actions": [
    "String"
  ]
}
```


