---
title: "prompt resource type"
description: "Security Copilot Prompt Resource Type"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security.securitycopilot"
doc_type: resourcePageType
---

# prompt resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the resources related to the prompt resource. 


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security.securitycopilot-session-list-prompts.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md) collection|Get a list of the prompt objects and their properties.|
|[Create](../api/security.securitycopilot-session-post-prompts.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md)|Create a new prompt object.|
|[Get](../api/security.securitycopilot-prompt-get.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md)|Read the properties and relationships of [microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md) object.|
|[Update](../api/security.securitycopilot-prompt-update.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md)|Update the properties of a prompt object.|
|[Delete](../api/security.securitycopilot-session-delete-prompts.md)|None|Delete a prompt object.|
|[List evaluations](../api/security.securitycopilot-prompt-list-evaluations.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security.securitycopilot-evaluation.md) collection|Get a list of the evaluation objects.|
|[Create evaluation](../api/security.securitycopilot-prompt-post-evaluations.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security.securitycopilot-evaluation.md)|Create a new evaluation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|Input content to the prompt|
|createdDateTime|DateTimeOffset|Created time|
|id|String|Prompt identifier|
|inputs|[microsoft.graph.security.securityCopilot.Dictionary](../resources/securitycopilot-dictionary.md)|Future value|
|lastModifiedDateTime|DateTimeOffset|Last modified time|
|skillInputDescriptors|[microsoft.graph.security.securityCopilot.skillInputDescriptor](../resources/security.securitycopilot-skillinputdescriptor.md) collection|Skill Input descriptor|
|skillName|String|Skill Name|
|type|microsoft.graph.security.securityCopilot.promptType|Prompt types. The possible values are: `unknown`, `context`, `prompt`, `skill`, `feedback`, `unknownFutureValue`. Only `prompt` is currently supported.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|evaluations|[microsoft.graph.security.securityCopilot.evaluation](../resources/security.securitycopilot-evaluation.md) collection|Evaluations collection

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.securityCopilot.prompt",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.prompt",
  "id": "String (identifier)",
  "type": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "skillName": "String",
  "skillInputDescriptors": [
    {
      "@odata.type": "microsoft.graph.security.securityCopilot.skillInputDescriptor"
    }
  ],
  "content": "String",
  "inputs": {
    "@odata.type": "microsoft.graph.security.securityCopilot.Dictionary"
  }
}
```

