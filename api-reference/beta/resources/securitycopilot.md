---
title: "securityCopilot resource type"
description: "SecurityCopilot resource"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# securityCopilot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources related to Microsoft Security Copilot.
This is an abstract type.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workspaces](../api/securitycopilot-list-workspaces.md)|[workspace](../resources/security.securitycopilot-workspace.md) collection|Get a list of the workspace objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Represents the unique ID of the Security Copilot workspace. Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|workspaces|[workspace](../resources/security-securitycopilot-workspace.md) collection|References the workspace object.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.securityCopilot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.securityCopilot"
}
```

