---
title: "securitycopilot workspace resource type"
description: "Represents a Microsoft Security Copilot Workspace"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: resourcePageType
---

# securitycopilot workspace resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Security Copilot Workspace. This resources supports the following methods described in the table below.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/securitycopilot-list-workspaces.md)|[microsoft.graph.security.securityCopilot.workspace](../resources/security.securitycopilot-workspace.md) collection|Get a list of the workspace objects and their properties.|
|[List plugins](../api/security.securitycopilot-workspace-list-plugins.md)|[microsoft.graph.security.securityCopilot.plugin](../resources/security.securitycopilot-plugin.md) collection|**TODO: Add a useful description.**|
|[List sessions](../api/security.securitycopilot-workspace-list-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security.securitycopilot-session.md) collection|**TODO: Add a useful description.**|
|[Create session](../api/security.securitycopilot-workspace-post-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security.securitycopilot-session.md)|Create a new session object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|plugins|[microsoft.graph.security.securityCopilot.plugin](../resources/security.securitycopilot-plugin.md) collection|**TODO: Add Description**|
|sessions|[microsoft.graph.security.securityCopilot.session](../resources/security.securitycopilot-session.md) collection|**TODO: Add Description**|

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

