---
title: "onPremisesAgent resource type"
description: "onPremisesAgent resource type."
ms.localizationpriority: medium
author: "shahzad-khalid"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 05/23/2024
---

# onPremisesAgent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents on-premises agent. On-premises agents installed by a tenant administrator can be configured to access/handle requests to a particular [published resource](publishedresource.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/onpremisesagent-list.md) | [onPremisesAgent](onpremisesagent.md) collection | Get an **onPremisesAgents** object collection. |
| [Get](../api/onpremisesagent-get.md) | [onPremisesAgent](onpremisesagent.md) | Read the properties and relationships of an **onPremisesAgent** object. |
| [Assign to agent group](../api/onpremisesagent-post-agentgroups.md) | None | Assign an **onPremisesAgent** to an **onPremisesAgentGroup**.|
| [Remove from agent group](../api/onpremisesagent-delete-agentgroups.md) | None | Remove an **onPremisesAgent** from an **onPremisesAgentGroup**. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|externalIp|String|The external IP address as detected by the service for the agent machine. Read-only|
|id|String| The object id of the onPremisesAgent. Read-only.|
|machineName|String|The name of the machine that the agent is running on. Read-only|
|status|agentStatus| The possible values are: `active`, `inactive`.|
|supportedPublishingTypes|onPremisesPublishingType collection| The possible values are: `applicationProxy`, `exchangeOnline`, `authentication`, `provisioning`, `intunePfx`, `oflineDomainJoin`, `unknownFutureValue`, `privateAccess`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `privateAccess`.|


## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|agentGroups|[onPremisesAgentGroup](onpremisesagentgroup.md) collection| List of **onPremisesAgentGroups** that an **onPremisesAgent** is assigned to. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onPremisesAgent",
  "keyProperty": "id"
}-->

```json
{
  "externalIp": "String",
  "id": "String (identifier)",
  "machineName": "String",
  "status": "string",
  "supportedPublishingTypes": ["string"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "onPremisesAgent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->



