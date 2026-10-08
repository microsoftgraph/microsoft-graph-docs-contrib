---
title: "safeguardSettings resource type"
description: "Manages the safeguards that Windows Autopatch applies to devices in a deployment."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# safeguardSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Manages the safeguards that Windows Autopatch applies to devices in a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|disabledSafeguardProfiles|[microsoft.graph.windowsUpdates.safeguardProfile](../resources/windowsupdates-safeguardprofile.md) collection|List of safeguards to ignore per device.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.safeguardSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.safeguardSettings",
  "disabledSafeguardProfiles": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.safeguardProfile"
    }
  ]
}
```

