---
title: "roleDefinition resource type"
description: "Represents detailed information for the role definition."
author: "idwilliams"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: resourcePageType
---

# roleDefinition resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information for the role definition.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description for the role.|
|displayName|String|The display name for the role assignment.|
|templateId|String|The unique identifier for the template.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.roleDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.roleDefinition",
  "description": "String",
  "displayName": "String",
  "templateId": "String"
}
```
