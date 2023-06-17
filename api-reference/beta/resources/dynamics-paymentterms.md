---
title: paymentTerms resource type 
description: A payment terms object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# paymentTerms resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [payment term](../resources/dynamics-paymentterms.md) in Dynamics 365 Business Central.

## Methods

| Method                                                      | Return Type|Description            |
|:------------------------------------------------------------|:-----------|:----------------------|
|[Get paymentTerms](../api/dynamics-paymentterms-get.md)      |**paymentTerms**|Get a payment terms object.   |
|[Post paymentTerms](../api/dynamics-create-paymentterms.md)  |**paymentTerms**|Create a payment terms object.|
|[Patch paymentTerms](../api/dynamics-paymentterms-update.md) |**paymentTerms**|Update a payment terms object.|
|[Delete paymentTerms](../api/dynamics-paymentterms-delete.md)|none            |Delete a payment terms object.|

## Properties
| Property	                   | Type	  |Description                                                |
|:-----------------------------|:-------|:----------------------------------------------------------|
|calculateDiscountOnCreditMemos|Boolean |Specifies whether the discount should be applied to credit memos. `True` indicates a discount will be given; `false`* indicates a discount will not be given.|
|code                          |string  |Specifies the payment term code.                           |
|discountDateCalculation       |string  |Specifies the formula that is used to calculate the date that a payment must be made in order to obtain a discount.|
|discountPercent               |decimal |Specifies the discount percentage that is applied for early payment of an invoice amount.|
|displayName                   |string  |Specifies the payment term display name.                   |
|dueDateCalculation            |string  |Specifies the formula that is used to calculate the date that a payment must be made.|
|id                            |GUID    |The unique identifier for the **paymentTerms**. Non-editable.           |
|lastModifiedDateTime          |datetime|The date and time when the **paymentTerms** were last modified. Read-Only.|  


## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.


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


