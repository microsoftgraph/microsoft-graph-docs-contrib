---
title: "safeguardProfile resource type"
description: "Describes one or more issues against which Windows Autopatch safeguards devices."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# safeguardProfile resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes one or more issues against which Windows Autopatch safeguards devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.windowsUpdates.safeguardCategory|Specifies the category of safeguards. The possible values are: `likelyIssues`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.safeguardProfile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.safeguardProfile",
  "category": "String"
}
```

