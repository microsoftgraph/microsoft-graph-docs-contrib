---
title: "workspace resource type (for securityCopilot)"
description: "Microsoft Security Copilot Workspace"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# workspace resource type (for securityCopilot)

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Security Copilot workspace. For more information, see [Workspaces overview](/copilot/security/workspaces-overview).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/securitycopilot-list-workspaces.md)|[microsoft.graph.security.securityCopilot.workspace](../resources/security-securitycopilot-workspace.md) collection|Get a list of the workspace objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the Security Copilot workspace.|
|id|String|Represents the unique ID of the Security Copilot workspace or `default` to represent the default workspace that was created as part of the initial onboarding to Security Copilot. Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|plugins|[microsoft.graph.security.securityCopilot.plugin](../resources/security-securitycopilot-plugin.md) collection|Represents plugins in Security Copilot.|
|sessions|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) collection|Represents sessions in Security Copilot.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.securityCopilot.workspace",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.workspace",
  "id": "String (identifier)",
  "displayName": "String"
}
```

