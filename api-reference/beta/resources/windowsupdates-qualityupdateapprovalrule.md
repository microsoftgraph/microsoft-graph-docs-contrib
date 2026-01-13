---
title: "qualityUpdateApprovalRule resource type"
description: "Represents an entity that governs the Quality Update Approval deployment rules."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# Quality Update Approval Rule Resource Type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the Quality Update Approval deployment rules.

Inherits from [microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|cadence|microsoft.graph.windowsUpdates.qualityUpdateCadence| It defines the Quality Updates cadence. A Quality Update cadence refers to the frequency and rhythm at which updates are delivered and installed. The possible values are: `monthly`, `outOfBand`, `unknownFutureValue`.|
|classification|microsoft.graph.windowsUpdates.qualityUpdateClassification| It defines the Quality Update classification type. The possible values are: `all`, `security`, `nonSecurity`, `unknownFutureValue`.|
|deferralInDays|Int32| The quality update deferral period in days. The value must be between `0` and `30`. Inherited from [microsoft.graph.windowsUpdates.approvalRule](../resources/windowsupdates-approvalrule.md).|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.qualityUpdateApprovalRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.qualityUpdateApprovalRule",
  "deferralInDays": "Integer",
  "classification": "String",
  "cadence": "String"
}
```

