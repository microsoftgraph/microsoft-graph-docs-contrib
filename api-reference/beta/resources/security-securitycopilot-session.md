---
title: "session resource type"
description: "Represents a session in Security Copilot."
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# session resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a session within a [workspace](../resources/security-securitycopilot-workspace.md) in Security Copilot.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-securitycopilot-workspace-list-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) collection|Get a list of the session objects and their properties.|
|[Create](../api/security-securitycopilot-workspace-post-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Create a new session object.|
|[Get](../api/security-securitycopilot-session-get.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Read the properties and relationships of [microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) object.|
|[Update](../api/security-securitycopilot-session-update.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Update the properties of a session object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Created time of the session (UTC).|
|displayName|String|Display name for the session.|
|id|String|Represents the unique ID of the Security Copilot session. Inherits from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the session (UTC). Updated when **displayName** changes.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|prompts|[microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) collection|The collection of prompts in the session.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.securityCopilot.session",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.session",
  "id": "String (identifier)",
  "displayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)"
}
```

