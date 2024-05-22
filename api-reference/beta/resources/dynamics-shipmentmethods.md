---
title: "shipmentMethod resource type"
description: "Represents a method of shipment in Dynamics 365 Business Central, such as UPS, Fedex, and DHL."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
---

# shipmentMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a method of shipment in Dynamics 365 Business Central, such as UPS, Fedex, and DHL.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get shipmentMethod](../api/dynamics-shipmentmethods-get.md)|shipmentMethod|Get a shipment method.|
|[Create shipmentMethod](../api/dynamics-create-shipmentmethods.md)|shipmentMethod|Create a shipment method.|
|[Update shipmentMethod](../api/dynamics-shipmentmethods-update.md)|shipmentMethod|Update a shipment method.|
|[Delete shipmentMethod](../api/dynamics-shipmentmethods-delete.md)|None|Delete a shipment method.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|code|String|The shipment method code.|
|displayName|String|The display name for the shipment method.|
|id|String|The unique identifier of the **shipmentMethod**. Noneditable.|
|lastModifiedDateTime|Datetime|The date and time when the shipment method was last modified. Read-Only.|


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "Datetime"
}
```
