---
title: "intelligenceProfileSponsorState resource type"
description: "A known state-sponsor of an actor related to a threat or vulnerability outlined in an Intelligence Profile"
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfileSponsorState resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An `intelligenceProfileSponsorState` communicates a known state-sponsor of an actor related to a threat or vulnerability outlined in an Intelligence Profile.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|countryOrRegionCode|String|A codified representation for this sponsor state.|
|countryOrRegionLabel|String|A display label for this sponsor state.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.intelligenceProfileSponsorState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.intelligenceProfileSponsorState",
  "countryOrRegionLabel": "String",
  "countryOrRegionCode": "String"
}
```

