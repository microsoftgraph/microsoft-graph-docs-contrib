---
title: "session resource type"
description: "Security Copilot session resource type"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: resourcePageType
---

# session resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources related to the Security Copilot session resource.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-securitycopilot-workspace-list-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) collection|Get a list of the session objects and their properties.|
|[Create](../api/security-securitycopilot-workspace-post-sessions.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Create a new session object.|
|[Get](../api/security-securitycopilot-session-get.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Read the properties and relationships of [microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md) object.|
|[Update](../api/security-securitycopilot-session-update.md)|[microsoft.graph.security.securityCopilot.session](../resources/security-securitycopilot-session.md)|Update the properties of a session object.|
|[List prompts](../api/security-securitycopilot-session-list-prompts.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) collection|Lists the collection of prompts created in each session|
|[Create prompt](../api/security-securitycopilot-session-post-prompts.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md)|Create a new prompt object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Created time of the session (UTC)|
|displayName|String|Display name for the session|
|id|String|Unique identifier for the session |
|lastModifiedDateTime|DateTimeOffset|Last modified time of the session (UTC)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|prompts|[microsoft.graph.security.securityCopilot.prompt](../resources/security-securitycopilot-prompt.md) collection|The collection of prompts in the session|

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

