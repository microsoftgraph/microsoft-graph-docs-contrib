---
title: "shiftsRolePermission resource type"
description: "Defines permissions for a role in a Shifts schedule."
author: "galalalym"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# shiftsRolePermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for a role in a Shifts schedule.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedResourceActions|String collection|Permissions that are allowed for a role. Permissions not in this collection are disabled.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.shiftsRolePermission"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.shiftsRolePermission",
  "allowedResourceActions": [
    "String"
  ]
}
```

