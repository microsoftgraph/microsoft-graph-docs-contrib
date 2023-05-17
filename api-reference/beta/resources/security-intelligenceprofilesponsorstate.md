---
title: "intelligenceProfileSponsorState resource type"
description: "Represents a known state-sponsor of an actor related to a threat or vulnerability outlined in an intelligence profile."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfileSponsorState resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a known state-sponsor of an actor related to a threat or vulnerability outlined in an intelligence profile. This is also known as the country/region of origin for the given actor or threat.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|code|String|A codified representation for this sponsor state.|
|label|String|A display label for this sponsor state.|

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
  "code": "String",
  "label": "String"
}
```
