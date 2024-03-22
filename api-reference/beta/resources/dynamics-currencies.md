---
title: "currency resource type"
description: "Represents a currency used in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
---

# currency resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a currency used in Dynamics 365 Business Central.

## Methods
| Method                                                  |Return Type|Description       |
|:--------------------------------------------------------|:----------|:-----------------|
|[Get currency](../api/dynamics-currencies-get.md)      |[currency](dynamics-currencies.md) |Get a currency.   |
|[Create currency](../api/dynamics-create-currencies.md)  |[currency](dynamics-currencies.md) |Create a currency.|
|[Update currency](../api/dynamics-currencies-update.md) |[currency](dynamics-currencies.md) |Update a currency.|
|[Delete currency](../api/dynamics-currencies-delete.md)|None       |Delete a currency.|

## Properties
| Property	            | Type	 |Description                                                   |
|:----------------------|:-------|:-------------------------------------------------------------|
|amountDecimalPlaces    |String  |The number of decimal places the system displays on amounts for this currency.|
|amountRoundingPrecision|Decimal |The size of the interval to be used when rounding amounts for this currency.|
|code                   |String  |The currency code.                                  |
|displayName            |String  |The display name for the currency.                          |
|id                     |String    |The unique identifier of the currency. Non-editable.                  |
|lastModifiedDateTime   |Datetime|The date and time the currency was last modified. Read-Only.       |
|symbol                 |String  |The symbol for this currency that appears on checks.|


## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.

```json
{
  "amountDecimalPlaces": "String",
  "amountRoundingPrecision": "Decimal",
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "Datetime",
  "symbol": "String"
}
```
