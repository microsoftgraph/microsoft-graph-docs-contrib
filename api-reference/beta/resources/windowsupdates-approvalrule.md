---
title: "approvalRule resource type"
description: "An abstract type that represents an entity that governs the overall Windows update approval deployment rules."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# approvalRule resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an entity that governs the overall Windows update approval deployment rules.

Base type of [qualityUpdateApprovalRule](../resources/windowsupdates-qualityupdateapprovalrule.md) and [recoveryApprovalRule](../resources/windowsupdates-recoveryapprovalrule.md). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deferralInDays|Int32| The Windows update deferral period in days. The value must be between `0` and `30`. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.approvalRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.approvalRule",
  "deferralInDays": "Int32"
}
```

