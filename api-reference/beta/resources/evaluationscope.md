---
title: "evaluationScope resource type"
description: "Represents the evaluation context used to determine how Microsoft Purview evaluates content and resolves applicable protection scopes."
author: "psanyal"
ms.date: 06/25/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# evaluationScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the evaluation context used when Microsoft Purview evaluates content or computes protection scopes.

The evaluation scope determines how policies are resolved for a request. By default, requests are evaluated using the tenant context. For Agent-to-Tool (A2T) scenarios, set the **type** property to `agent` to enable agent-aware policy evaluation, which considers both agent and tool locations when resolving applicable Microsoft Purview Data Loss Prevention (DLP) policies.

This resource is used by the following APIs:

- `protectionScopes/compute`
- `processContent`

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|evaluationScopeType|Specifies the evaluation context for the request. Required. Set to `agent` for Agent-to-Tool (A2T) scenarios to enable policy evaluation based on `policyLocationApplication` and `policyLocationTool`. The possible values are: `tenant`, `agent`, `anonymousUser`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.evaluationScope"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.evaluationScope",
  "type": "String"
}
```