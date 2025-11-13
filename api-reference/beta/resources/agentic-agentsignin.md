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
|agentSubjectParentId|String|The subject's parent object ID. This will either be the **id** of the **agentIdentity** or **agentIdentityBlueprint**.|
|agentSubjectType|microsoft.graph.agentic.agentType|The type of the subject that requested the token. The possible values are: `notAgentic`, `agenticAppBuilder`, `agenticApp`, `agenticAppInstance`, `agentIdentityBlueprintPrincipal`, `agentIDuser`, `unknownFutureValue`.|
|agentType|microsoft.graph.agentic.agentType|Indicates whether the identity is agentic or non-agentic roles. The possible values are: `notAgentic`, `agenticAppBuilder`, `agenticApp`, `agenticAppInstance`, `agentIdentityBlueprintPrincipal`, `agentIDuser`, `unknownFutureValue`.|
|parentAppId|String|The **appId** of the parent agent where the **agentType** is agentic.|

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
