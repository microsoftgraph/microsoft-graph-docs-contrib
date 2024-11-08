---
title: "driverUpdateFilter resource type"
description: "Represents a filter to determine which driver update content matches the rule on an ongoing basis."
author: "angiechen22"
ms.localizationpriority: medium
ms.subservice: autopatch
doc_type: resourcePageType
---

# remediationUpdateFilter resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a filter to determine which remediation update content matches the rule on an ongoing basis.

Inherits from [windowsUpdateFilter](../resources/windowsupdates-windowsupdatefilter.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|remediationType|microsoft.graph.windowsupdates.remediationType|The type of remediation content that is offered to the device. Possible values are: `inPlaceUpgrade`.|

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
