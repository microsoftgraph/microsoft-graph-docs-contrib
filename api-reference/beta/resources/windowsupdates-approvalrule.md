---
title: "Windows updates approvalRule resource type"
description: "Represents an entity that governs the overall Windows Update Approval deployment rules."
author: "andredm7"
ms.date: 01/16/2026
ms.localizationpriority: medium
ms.subservice: "windows-autopatch"
doc_type: resourcePageType
---

# Windows update Approval Rule Resource Type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that governs the overall Windows Update Approval deployment rules.

This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deferralInDays|Int32| The Windows Update deferral period in days. The value must be between `0` and `30`. |

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
  "deferralInDays": "Integer"
}
```

