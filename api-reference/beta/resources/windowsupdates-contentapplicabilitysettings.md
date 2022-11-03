---
title: "contentApplicabilitySettings resource type"
description: "Represents settings for governing whether content is applicable to a device."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# contentApplicabilitySettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for governing whether content is applicable to a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|offerWhileRecommendedBy|String collection|Offer if the update is recommended by a vendor in the list, otherwise withhold the offer.|
|safeguard|[microsoft.graph.windowsUpdates.safeguardSettings](../resources/windowsupdates-safeguardsettings.md)|Settings for governing safeguard holds on offering content.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.contentApplicabilitySettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.contentApplicabilitySettings",
  "offerWhileRecommendedBy": ["String"],
  "safeguard": {
    "@odata.type": "microsoft.graph.windowsUpdates.safeguardSettings"
  }
}
```
