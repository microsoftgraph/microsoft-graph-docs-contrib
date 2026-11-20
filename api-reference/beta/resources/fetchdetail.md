---
title: "fetchDetail resource type"
description: "Represents a side-channel Microsoft Graph read performed during Entra Resource Policy evaluation."
author: "milanevk"
ms.date: 11/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# fetchDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a side-channel Microsoft Graph read performed during Entra Resource Policy (ERP) evaluation. The **fetchDetails** property of [policyEvaluationDetail](../resources/policyevaluationdetail.md) contains these details.

The fetch details are currently emitted as an empty collection.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|durationMs|Int32|The duration of the read, in milliseconds.|
|path|String|The Microsoft Graph path of the side-channel read.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fetchDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fetchDetail",
  "path": "String",
  "durationMs": "Integer"
}
```
