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
|agentType|microsoft.graph.agentic.agentType|The type of agent for agentic sign-ins. The possible values are: `notAgentic`, `agenticAppBuilder`, `agenticApp`, `agenticAppInstance`, `unknownFutureValue`.|
|parentAppId|String|The ID of the parent application for agentic instances.|

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
