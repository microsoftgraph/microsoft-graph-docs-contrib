---
title: "qualityUpdateApprovalRule resource type"
description: "Represents an entity that governs the quality update approval deployment rules."
author: "andredm7"
ms.date: 01/20/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# qualityUpdateApprovalRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the quality update approval deployment rules.

Inherits from [approvalRule](../resources/windowsupdates-approvalrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cadence|microsoft.graph.windowsUpdates.qualityUpdateCadence| Indicates the frequency and rhythm at which updates are delivered and installed. The possible values are: `monthly`, `outOfBand`, `unknownFutureValue`.|
|classification|microsoft.graph.windowsUpdates.qualityUpdateClassification| The quality update classification type. The possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`.|
|deferralInDays|Int32| The quality update deferral period in days. The value must be between `0` and `30`. Inherited from [microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md).|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
  "baseType": "microsoft.graph.windowsUpdates.approvalRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
  "cadence": "String",
  "classification": "String",
  "deferralInDays": "Int32"
}
```

