---
title: "intelligenceProfileCountryOrRegionOfOrigin resource type"
description: "Represents a country/region of origin for an actor related to a threat or vulnerability outlined in an intelligence profile."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# intelligenceProfileCountryOrRegionOfOrigin resource type

Namespace: microsoft.graph.security

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

The following JSON representation shows the resource type.

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
