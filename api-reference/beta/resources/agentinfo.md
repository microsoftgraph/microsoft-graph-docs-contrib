---
title: "agentInfo resource type"
description: "Describes the agent recorded in an agent run."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# agentInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the agent recorded in the **agent** property of an [agentRun](../resources/agentrun.md). This embedded complex type isn't an independently addressable resource.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationId|String|The agent's Microsoft Entra application identifier, when available.|
|definitionName|String|The qualified agent definition name, when available. Not an addressable catalog link.|
|displayName|String|The agent's display name, when available.|
|key|String|The opaque identifier of the recorded agent instance. A structural property, not an OData entity key.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentInfo",
  "key": "String",
  "displayName": "String",
  "definitionName": "String",
  "applicationId": "String"
}
```
