---
title: paymentTerm resource type
description: A payment term object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
---

# paymentTerm resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a payment term in Dynamics 365 Business Central.

## Methods

| Method                                                      | Return Type|Description            |
|:------------------------------------------------------------|:-----------|:----------------------|
|[Get paymentTerm](../api/dynamics-paymentterms-get.md)      |**paymentTerm**|Get a payment terms object.   |
|[Post paymentTerm](../api/dynamics-create-paymentterms.md)  |**paymentTerm**|Create a payment terms object.|
|[Patch paymentTerm](../api/dynamics-paymentterms-update.md) |**paymentTerm**|Update a payment terms object.|
|[Delete paymentTerm](../api/dynamics-paymentterms-delete.md)|none            |Delete a payment terms object.|

## Properties
| Property	                   | Type	  |Description                                                |
|:-----------------------------|:-------|:----------------------------------------------------------|
|calculateDiscountOnCreditMemos|Boolean |Specifies whether the discount should be applied to credit memos. `True` indicates a discount is given; `false`* indicates a discount won't be given.|
|code                          |string  |Specifies the payment term code.                           |
|discountDateCalculation       |string  |Specifies the formula that is used to calculate the date that a payment must be made in order to obtain a discount.|
|discountPercent               |decimal |Specifies the discount percentage that is applied for early payment of an invoice amount.|
|displayName                   |string  |Specifies the payment term display name.                   |
|dueDateCalculation            |string  |Specifies the formula that is used to calculate the date that a payment must be made.|
|id                            |GUID    |The unique identifier for the **paymentTerm**. Non-editable.           |
|lastModifiedDateTime          |datetime|The date and time when the **paymentTerm** were last modified. Read-Only.|


## Relationships
None.

## JSON representation

Here's a JSON representation of the resource.


```json
{
  "calculateDiscountOnCreditMemos": "boolean",
  "code": "string",
  "discountDateCalculation": "string",
  "discountPercent": "decimal",
  "displayName": "string",
  "dueDateCalculation": "string",
  "id": "GUID",
  "lastModifiedDateTime": "datetime"
}
```


