---
title: "agentBlueprintBotBasedEndpointConfigurationDetails resource type"
description: "Represents the bot-based endpoint details for an agent, including the bot ID that Teams uses to deliver messages."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# agentBlueprintBotBasedEndpointConfigurationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the bot-based endpoint details for an agent, including the bot ID that Teams uses to deliver messages.

This complex type is used by the **botBased** property of [agentEndpointConfiguration](../resources/agentendpointconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|botId|String|The identifier of the bot that Teams uses to deliver messages to the agent through the Bot Framework.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentBlueprintBotBasedEndpointConfigurationDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentBlueprintBotBasedEndpointConfigurationDetails",
  "botId": "String"
}
```
