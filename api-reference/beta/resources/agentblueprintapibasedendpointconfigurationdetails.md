---
title: "agentBlueprintApiBasedEndpointConfigurationDetails resource type"
description: "Represents the API-based endpoint details for an agent, including the callback URI that Teams posts message events to."
author: "sthapliyal"
ms.date: 07/28/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# agentBlueprintApiBasedEndpointConfigurationDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the API-based endpoint details for an agent, including the callback URI that Teams posts message events to.

This complex type is used by the **apiBased** property of [agentEndpointConfiguration](../resources/agentendpointconfiguration.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|callbackUri|String|The absolute HTTPS URI that Teams posts agent message events to.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.agentBlueprintApiBasedEndpointConfigurationDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentBlueprintApiBasedEndpointConfigurationDetails",
  "callbackUri": "String"
}
```
