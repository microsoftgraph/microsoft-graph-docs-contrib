---
title: "shipmentMethods resource type"
description: "Represents a method of shipment in Dynamics 365 Business Central, such as UPS, Fedex, and DHL." 
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# shipmentMethods resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a method of shipment in Dynamics 365 Business Central, such as UPS, Fedex, and DHL.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get shipmentMethods](../api/dynamics-shipmentmethods-get.md)|[shipmentMethods](dynamics-shipmentmethods.md)|Get a shipment method.|
|[Create shipmentMethods](../api/dynamics-create-shipmentmethods.md)|[shipmentMethods](dynamics-shipmentmethods.md)|Create a shipment method.|
|[Update shipmentMethods](../api/dynamics-shipmentmethods-update.md)|[shipmentMethods](dynamics-shipmentmethods.md)|Update a shipment method.|
|[Delete shipmentMethods](../api/dynamics-shipmentmethods-delete.md)|None|Delete a shipment method.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|code|String|The shipment method code.|
|displayName|String|The display name for the shipment method.|
|id|String|The unique identifier of the **shipmentMethod**. Non-editable.|
|lastModifiedDateTime|Datetime|The date and time when the shipment method was last modified. Read-Only.|  


## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "Datetime"
}
```
