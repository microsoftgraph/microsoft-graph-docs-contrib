---
title: "paymentMethod resource type"
description: "Represents a method of payment in Dynamics 365 Business Central such as PayPal, credit card, and bank account."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
---

# paymentMethod resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a method of payment in Dynamics 365 Business Central such as PayPal, credit card, and bank account.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[Get paymentMethod](../api/dynamics-paymentmethods-get.md)      |[paymentMethod](dynamics-paymentmethods.md)|Get a payment method object.   |
|[Post paymentMethod](../api/dynamics-create-paymentmethods.md)  |[paymentMethod](dynamics-paymentmethods.md)|Create a payment method object.|
|[Patch paymentMethod](../api/dynamics-paymentmethods-update.md) |[paymentMethod](dynamics-paymentmethods.md)|Update a payment method object.|
|[Delete paymentMethod](../api/dynamics-paymentmethods-delete.md)|None          |Delete a payment method object.|

## Properties
| Property	         | Type	  |Description                                                  |
|:-------------------|:-------|:------------------------------------------------------------|
|code                |String  |The payment method code.                                     |
|displayName         |String  |The payment method display name.                             |
|id                  |GUID    |The unique identifier of the **paymentMethod**. Noneditable.|
|lastModifiedDateTime|Datetime|The date and time when the payment method was last modified. Read-Only.|


## Relationships
None.

## JSON representation

Here's a JSON representation of the resource.

```json
{
  "code": "String",
  "displayName": "String",
  "id": "GUID",
  "lastModifiedDateTime": "Datetime"
}
```


