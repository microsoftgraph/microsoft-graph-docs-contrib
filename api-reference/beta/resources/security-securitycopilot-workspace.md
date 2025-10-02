---
title: "workspace resource type"
description: "Microsoft Security Copilot Workspace"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# workspace resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources related to a Microsoft Security Copilot Workspace.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/securitycopilot-list-workspaces.md)|[microsoft.graph.security.securityCopilot.workspace](../resources/security-securitycopilot-workspace.md) collection|Get a list of the workspace objects and their properties.|
|[List plugins](../api/security-securitycopilot-workspace-list-plugins.md)|[microsoft.graph.security.securityCopilot.plugin](../resources/security-securitycopilot-plugin.md) collection|Get a list of plugins available in the workspace. Plugins are skillsets that are a group of skills (tools)|
|[List sessions](../api/security-securitycopilot-workspace-list-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) collection|Get a list of sessions in the workspace|
|[Create session](../api/security-securitycopilot-workspace-post-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Create a new session object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the Security Copilot workspace|
|id|String|Represents the unique ID of the Security Copilot workspace. Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|plugins|[microsoft.graph.security.securityCopilot.plugin](../resources/security-securitycopilot-plugin.md) collection|References the plugin object|
|sessions|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) collection|References the session object|

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

