---
title: "rateDrivenRolloutSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# rateDrivenRolloutSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|devicesPerOffer|Int32|**TODO: Add Description**|
|durationBetweenOffers|Duration|**TODO: Add Description** Inherited from [gradualRolloutSettings](../resources/windowsupdates-gradualrolloutsettings.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.rateDrivenRolloutSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.rateDrivenRolloutSettings",
  "durationBetweenOffers": "String (duration)",
  "devicesPerOffer": "Integer"
}
```

