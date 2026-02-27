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
This resource is an abstract type.

Inherits from [entity](../resources/entity.md)

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Represents the unique ID of the Security Copilot workspace. Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|workspaces|[workspace](../resources/security-securitycopilot-workspace.md) collection|References a workspace in Security Copilot.|

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
  "@odata.type": "#microsoft.graph.securityCopilot",
  "id": "String (identifier)"
}
```

