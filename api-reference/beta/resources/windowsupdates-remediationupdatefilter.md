---
title: "remediationUpdateFilter resource type"
description: "Represents a filter to determine which remediation update content matches the rule continuously."
author: "angiechen22"
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
ms.date: 03/30/2025
---

# remediationUpdateFilter resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a filter to determine which remediation update content matches the rule continuously.

Inherits from [windowsUpdateFilter](../resources/windowsupdates-windowsupdatefilter.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|remediationType|microsoft.graph.windowsUpdates.remediationType|The type of remediation content that is offered to the device. The possible values are: `inPlaceUpgrade`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.remediationUpdateFilter",
  "remediationType": "microsoft.graph.windowsUpdates.remediationType"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.remediationUpdateFilter",
  "remediationType": "String"
}
```
