---
title: "agentSignIn resource type"
description: "Information about an agentic sign-in"
author: "egreenberg14"
ms.date: 05/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# agentSignIn resource type

Namespace: microsoft.graph.agentic

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

For agentic [sign-ins](../resources/signin.md), provides information about the agent.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|agentSubjectParentId|String|The subject's parent id. This will either be the id of the agent identity or agent Blueprint|
|agentSubjectType|microsoft.graph.agentic.agentType|The identity of the subject of the token which was requested.|The possible values are: `notAgentic`, `agenticAppBuilder`, `agenticApp`, `agenticAppInstance`, `unknownFutureValue`.|
|agentType|microsoft.graph.agentic.agentType|Indicates whether the identity is agentic. Values typically distinguish between agentic and non-agentic roles|The possible values are: `notAgentic`, `agenticAppBuilder`, `agenticApp`, `agenticAppInstance`, `unknownFutureValue`.|
|parentAppId|String|The id of the parent of the value within agentType|
|agentServicePrincipalId|String|**TODO: Add Description**|


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentic.agentSignIn"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentic.agentSignIn",
  "agentType": "String",
  "parentAppId": "String"
}
```
