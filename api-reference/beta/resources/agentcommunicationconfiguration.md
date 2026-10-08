---
title: "agentCommunicationConfiguration resource type"
description: "Represents the communication configuration for an agent, including the endpoint binding and Teams message notification settings that agents use to receive messages."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# agentCommunicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the communication configuration for an agent, including the endpoint binding (bot ID or callback URI) and the Teams message notification settings that agents use to receive messages.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|**Agent identity blueprint**|||
|[Get](../api/agentidentityblueprint-get-communicationconfiguration.md)|[agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md)|Read the communication configuration of an [agentIdentityBlueprint](../resources/agentidentityblueprint.md).|
|[Update](../api/agentidentityblueprint-update-communicationconfiguration.md)|[agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md)|Replace the communication configuration of an [agentIdentityBlueprint](../resources/agentidentityblueprint.md).|
|**Agent identity**|||
|[Get](../api/agentidentity-get-communicationconfiguration.md)|[agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md)|Read the communication configuration of an [agentIdentity](../resources/agentidentity.md).|
|[Update](../api/agentidentity-update-communicationconfiguration.md)|[agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md)|Replace the communication configuration of an [agentIdentity](../resources/agentidentity.md).|
|[reset](../api/agentcommunicationconfiguration-reset.md)|[agentCommunicationConfiguration](../resources/agentcommunicationconfiguration.md)|Reset the communication configuration override for an agent identity, which restores effective configuration resolution to the agent blueprint level, and returns the blueprint's communication configuration as the new effective configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endpointConfiguration|[agentEndpointConfiguration](../resources/agentendpointconfiguration.md)|The endpoint binding (bot ID or callback URI) that the agent uses to receive messages.|
|isOverridableAtAgentIdLevel|Boolean|Indicates whether individual agent instances created from this blueprint can override the `endpointConfiguration`. When `true`, each instance can override it; when `false`, every instance inherits it. Not nullable.|
|teamworkConfiguration|[agentTeamworkConfiguration](../resources/agentteamworkconfiguration.md)|The per-conversation-context message notification settings (group chat, channel, one-on-one chat, and meeting chat) that agents use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentCommunicationConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentCommunicationConfiguration",
  "isOverridableAtAgentIdLevel": "Boolean",
  "endpointConfiguration": {"@odata.type": "microsoft.graph.agentEndpointConfiguration"},
  "teamworkConfiguration": {"@odata.type": "microsoft.graph.agentTeamworkConfiguration"}
}
```
