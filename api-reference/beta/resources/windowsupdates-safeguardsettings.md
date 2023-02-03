---
title: "safeguardSettings resource type"
description: "Manages the safeguards that the service applies to devices in a deployment."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# safeguardSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Manages the safeguards that the service applies to devices in a deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|disabledSafeguardProfiles|[microsoft.graph.windowsUpdates.safeguardProfile](../resources/windowsupdates-safeguardprofile.md) collection|List of safeguards to ignore per device.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

