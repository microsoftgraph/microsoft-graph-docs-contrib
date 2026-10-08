---
title: "qualityUpdateFilter resource type"
description: "Represents a filter to determine which quality update content matches the rule on an ongoing basis."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# qualityUpdateFilter resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a filter to determine which quality update content matches the rule on an ongoing basis.

Inherits from [windowsUpdateFilter](../resources/windowsupdates-windowsupdatefilter.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cadence|microsoft.graph.windowsUpdates.qualityUpdateCadence|Specifies the cadence for publishing quality updates of the filter. The possible values are: `monthly`, `outOfBand`, `unknownFutureValue`. |
|classification|microsoft.graph.windowsUpdates.qualityUpdateClassification|Specifies the quality update classification of the filter. The possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateFilter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateFilter", 
  "cadence": "String",
  "classification": "String"
}
```
