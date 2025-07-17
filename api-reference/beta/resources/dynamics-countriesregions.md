---
title: countryRegion resource type
description: A country/region object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 06/19/2024
---

# countryRegion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a countryRegion object in Dynamics 365 Business Central, which is part of an address.

## Methods

| Method                                                              | Return Type    |Description                |
|:--------------------------------------------------------------------|:---------------|:--------------------------|
|[Get](../api/dynamics-countriesregions-get.md)      |countryRegion|Get a Countries/Regions.   |
|[Create](../api/dynamics-create-countriesregions.md)  |countryRegion|Create a Countries/Regions.|
|[Patch](../api/dynamics-countriesregions-update.md) |countryRegion|Update a Countries/Regions.|
|[Delete](../api/dynamics-countriesregions-delete.md)|none            |Delete a Countries/Regions.|

## Properties
| Property	     | Type	      |Description                                                  |
|:---------------|:-----------|:------------------------------------------------------------|
|id              |GUID        |The unique ID of the country/region. Non-editable.           |
|code            |string      |Specifies the code of the country/region.                    |
|displayName     |string      |Specifies the display name of the country/region.            |
|addressFormat   |string      |Specifies the format of the address that is displayed on external-facing documents. You link an address format to a country/region code so that external-facing documents based on cards or documents with that country/region code use the specified address format.|
|lastModifiedDateTime|datetime|The last datetime the country/region was modified. Read-Only.|


## Relationships
None

## JSON representation

Here is a JSON representation of the countriesRegions.


```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "addressFormat": "string",
  "lastModifiedDateTime": "datetime"
}

```




