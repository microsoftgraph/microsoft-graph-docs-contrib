---
title: "physicalAddress resource type"
description: "Represents the street address of a resource such as a contact or event."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: people
doc_type: resourcePageType
ms.date: 08/08/2024
---

# physicalAddress resource type

Namespace: microsoft.graph

Represents the street address of a resource such as a contact or event.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|String|The city.|
|countryOrRegion|String|The country or region. It's a free-format string value, for example, "United States".|
|postalCode|String|The postal code.|
|state|String|The state.|
|street|String|The street.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.physicalAddress"
}-->

```json
{
  "city": "string",
  "countryOrRegion": "string",
  "postalCode": "string",
  "state": "string",
  "street": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "physicalAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

