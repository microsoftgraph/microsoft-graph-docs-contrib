---
title: "prompt resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# prompt resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security.securitycopilot-session-list-prompts.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md) collection|Get a list of the prompt objects and their properties.|
|[Create](../api/security.securitycopilot-session-post-prompts.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md)|Create a new prompt object.|
|[Get](../api/security.securitycopilot-prompt-get.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md)|Read the properties and relationships of [microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md) object.|
|[Update](../api/security.securitycopilot-prompt-update.md)|[microsoft.graph.security.securityCopilot.prompt](../resources/security.securitycopilot-prompt.md)|Update the properties of a prompt object.|
|[Delete](../api/security.securitycopilot-session-delete-prompts.md)|None|Delete a prompt object.|
|[List evaluations](../api/security.securitycopilot-prompt-list-evaluations.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security.securitycopilot-evaluation.md) collection|**TODO: Add a useful description.**|
|[Create evaluation](../api/security.securitycopilot-prompt-post-evaluations.md)|[microsoft.graph.security.securityCopilot.evaluation](../resources/security.securitycopilot-evaluation.md)|Create a new evaluation object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherits from [entity](../resources/entity.md)|
|inputs|[microsoft.graph.Dictionary](../resources/dictionary.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|skillInputDescriptors|[microsoft.graph.security.securityCopilot.skillInputDescriptor](../resources/security.securitycopilot-skillinputdescriptor.md) collection|**TODO: Add Description**|
|skillName|String|**TODO: Add Description**|
|type|microsoft.graph.security.securityCopilot.promptType|**TODO: Add Description**. The possible values are: `unknown`, `context`, `prompt`, `skill`, `feedback`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|evaluations|[microsoft.graph.security.securityCopilot.evaluation](../resources/security.securitycopilot-evaluation.md) collection|**TODO: Add Description**|

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
    "@odata.type": "microsoft.graph.Dictionary"
  }
}
```

