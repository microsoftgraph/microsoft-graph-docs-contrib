---
title: "phoneOptions resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when telephony methods are ready to be presented to the user."
author: "Regina Yap (reyap)"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# phoneOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An list of positive integers describing the calling codes to opt-in and opt-out for telephony services.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultRegions|Int16 collection|A read-only, pre-defined list of regions that already enable MFA. Customers cannot modify this list.|
|excludeRegions|Int16 collection|A numbers-only set representing the region telecom codes to prevent or disable the telephony service. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be non-null.|
|includeAdditionalRegions|Int16 collection|A numbers-only set representing the country codes that can be manually added to enable telephony service in those regions, in addition to the list of countries that are already enabled. Regions that require opt in are linked above. Validates against current International Subscriber Dialing (ISD) country codes where the maximum code length is 4. Values must be positive integers and cannot overlap with `excludeRegions`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.phoneOptions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.phoneOptions",
  "includeAdditionalRegions": "[Integer]", 
  "excludeRegions": "[Integer]"
}
```

