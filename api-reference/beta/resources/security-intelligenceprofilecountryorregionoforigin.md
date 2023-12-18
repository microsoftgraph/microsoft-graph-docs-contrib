---
title: "intelligenceProfileCountryOrRegionOfOrigin resource type"
description: "Represents a country/region of origin for an actor related to a threat or vulnerability outlined in an intelligence profile."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# intelligenceProfileCountryOrRegionOfOrigin resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents a country/region of origin for an actor related to a threat or vulnerability outlined in an intelligence profile.

## Properties

| Property | Type   | Description                                                  |
| :------- | :----- | :----------------------------------------------------------- |
| code     | String | A codified representation for this country/region of origin. |
| label    | String | A display label for this ountry/region of origin.            |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.intelligenceProfileCountryOrRegionOfOrigin"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.intelligenceProfileCountryOrRegionOfOrigin",
  "code": "String",
  "label": "String"
}
```
