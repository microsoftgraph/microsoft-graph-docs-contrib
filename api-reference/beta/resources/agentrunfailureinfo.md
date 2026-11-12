---
title: "agentRunFailureInfo resource type"
description: "Describes failure details recorded for an agent run."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# agentRunFailureInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a run-level failure in the **failureInfo** property of an [agentRun](../resources/agentrun.md). This information is separate from the HTTP error response.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|errorType|String|The error classification, when available.|
|message|String|The human-readable failure detail, when available.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentRunFailureInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentRunFailureInfo",
  "message": "String",
  "errorType": "String"
}
```
