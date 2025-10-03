---
title: "evaluationResult resource type"
description: "Security Copilot Evaluation Result resource type"
author: "spunukol"
ms.date: 07/17/2025
ms.localizationpriority: medium
ms.subservice: "security-copilot"
doc_type: resourcePageType
---

# evaluationResult resource type

Namespace: microsoft.graph.security.securityCopilot

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Security Copilot evaluationResult resource types are available here.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|Final Content|
|previewState|microsoft.graph.security.securitycopilot.skillPreviewState|Evaluation skill release information. The possible values are: `ga`, `public`, `private`, `unknownFutureValue`.|
|type|microsoft.graph.security.securitycopilot.evaluationResultType|Evaluation Results types. The possible values are: `unknown`, `success`, `error`, `needAdditionalClaims`, `rejected`, `timedOut`, `capacityExceeded`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.securityCopilot.evaluationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.securityCopilot.evaluationResult",
  "content": "String",
  "previewState": "String",
  "type": "String"
}
```

