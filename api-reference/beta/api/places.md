---
title: "places resource type"
description: "Provides more details about rooms annd roomlist in a company."
localization_priority: Normal
author: "vrod9429"
ms.prod: "Outlook"
doc_type: "resourcePageType"
---

# places resource type

Places API provides more details about rooms annd roomlist in a company. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get places](../api/places-get.md) | [places](places.md) | Read properties and relationships of places object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|address|[physicalAddress](physicaladdress.md)|The address of the place.|
|displayName|String| Name of the place that is displayed in the UI. |
|geoCoordinates|[outlookGeoCoordinates](outlookgeocoordinates.md)|Specifies the place location in latitude, longitude and (optionally) altitude coordinates. |
|phone|String|The place phone number|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.places",
  "baseType": ""
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "geocoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "phone": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "places resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
