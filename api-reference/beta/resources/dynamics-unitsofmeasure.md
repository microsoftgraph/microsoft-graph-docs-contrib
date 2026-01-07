---
title: unitOfMeasure resource type
description: "Represents a unit of measure, which is a standard of measurement of a quantity, in Dynamics 365 Business Central."
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# unitOfMeasure resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unit of measure, which is a standard of measurement of a quantity, in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get units of measure](../api/dynamics-unitsofmeasure-get.md)|unitOfMeasure|Get a unit of measure object.|
|[Create units of measure](../api/dynamics-create-unitsofmeasure.md)|unitOfMeasure|Create a unit of measure object.|
|[Update units of measure](../api/dynamics-unitsofmeasure-update.md)|unitOfMeasure|Update a unit of measure object.|
|[Delete units of measure](../api/dynamics-unitsofmeasure-delete.md)|none|Delete a unit of measure object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the unitOfMeasure. Noneditable.|
|code|string|Specifies the code for the unit of measure.|
|displayName|string|Specifies the unit of measure's display name.|
|internationalStandardCode|string|Specifies the unit of measure code expressed according to the UNECE Rec20 standard for electronically ending sales documents.|
|lastModifiedDateTime|datetime|The last datetime the unit of measure was modified. Read-Only.|


## Relationships
None

## JSON representation

Here's a JSON representation of the **unitOfMeasure** resource.

```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "internationalStandardCode": "string",
  "lastModifiedDateTime": "datetime"
}

```


