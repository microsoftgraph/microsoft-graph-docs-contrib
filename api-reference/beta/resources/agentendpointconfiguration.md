---
title: "agentEndpointConfiguration resource type"
description: "Represents the endpoint binding that an agent uses to receive messages, either through a bot or an API callback."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# agentEndpointConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the endpoint binding that an agent uses to receive messages, either through a bot or an API callback.

This complex type is configured in the **endpointConfiguration** property of [agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|apiBased|[agentBlueprintApiBasedEndpointConfigurationDetails](../resources/agentblueprintapibasedendpointconfigurationdetails.md)|The API-based endpoint details. Populated when `configurationType` is `apiBased`; carries the callback URI that Teams posts to. Must be null when `configurationType` is `botBased`.|
|botBased|[agentBlueprintBotBasedEndpointConfigurationDetails](../resources/agentblueprintbotbasedendpointconfigurationdetails.md)|The bot-based endpoint details. Populated when `configurationType` is `botBased`; carries the bot ID that Teams messages. Must be null when `configurationType` is `apiBased`.|
|configurationType|[agentEndpointConfigurationType](enums.md#agentendpointconfigurationtype-values)|The discriminator that indicates which endpoint variant is in effect. The possible values are: `apiBased`, `botBased`, `unknownFutureValue`. Not nullable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentEndpointConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentEndpointConfiguration",
  "configurationType": "String",
  "botBased": {"@odata.type": "microsoft.graph.agentBlueprintBotBasedEndpointConfigurationDetails"},
  "apiBased": {"@odata.type": "microsoft.graph.agentBlueprintApiBasedEndpointConfigurationDetails"}
}
```
