---
title: customer resource type
description: Represents a customer in Dynamics 365 Business Central.
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# customer resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customer in Dynamics 365 Business Central.

## Methods

| Method                                              |Return Type| Description      |
|:----------------------------------------------------|:----------|:-----------------|
|[Get customer](../api/dynamics-customer-get.md)      |customer   |Gets a customer.   |
|[Create customer](../api/dynamics-create-customer.md)|customer   |Creates a customer.|
|[Update customer](../api/dynamics-customer-update.md)|customer   |Updates a customer.|
|[Delete customer](../api/dynamics-customer-delete.md)|none        |Deletes a customer.|

## Properties
| Property	  | Type	 |Description|
|:------------|:---------|:----------|
|id           |GUID      |The unique ID of the item. Noneditable.|
|number       |string    |The customer number.|
|displayName  |string    |Specifies the customer's name. This name appears on all sales documents for the customer.|
|type         |string    |Specifies the type of customer, can be "Company" or "Person".|
|address      |[NAV.PostalAddress](../resources/dynamics-complextypes.md)|Specifies the customer's address. This address appears on all sales documents for the customer.|
|phoneNumber  |string    |Specifies the customer's telephone number.|
|email        |string    |Specifies the customer's email address.|
|website      |string    |Specifies the customer's home page address.|
|taxLiable    |Boolean   |Specifies if the customer or vendor is liable for sales tax. Set to **true** if the customer is tax liable.|
|taxAreaId    |GUID      |Specifies which tax area the customer belongs to.|
|taxAreaDisplayName|string|Specified the display name of the tax area the customer belongs to.|
|taxRegistrationNumber|string, maximum size 20|Specified the tax registration number of the customer.|
|currencyId   |GUID      |Specifies which currency the customer uses.|
|currencyCode |numeric   |The default currency code for the customer.|
|paymentTermsId|GUID     |Specifies which payment term the customer uses.|
|paymentMethodId|GUID    |Specifies which payment method the customer uses.|
|shipmentMethodId|GUID   |Specifies which shipment method the customer uses.|
|blocked      |string    |Specifies that transactions with the customer can't be posted. Set to **All**, if the customer is blocked, set to blank if not blocked.|
|balance      |numeric   |Specifies the payment amount that the customer owes for completed sales. This value is also known as the customer's balance. Read-Only.|
|overdueAmount|numeric   |Specifies the customer's overdue amount.|
|totalSalesExcludingTax|numeric|Specifies the total sales amount excluding tax of the customer.|
|lastModifiedDateTime|datetime|The last datetime the customer was modified. Read-Only.|


## Relationships
A Currency(currencyCode) must exist in the Currencies table.

A Payment Term(paymentTerms) must exist in the Payment Terms table.

A Shipment Method(shipmentMethod) must exist in the Shipment Method table.

A Payment Method(paymentMethod) must exist in the Payment Method table.

A Tax Area(taxArea) must exist in the Tax Area table.

## JSON representation

The following JSON representation shows the resource type.


```json
{
    "id": "GUID",
    "number": "string",
    "displayName": "string",
    "type": "string",
    "address": NAV.PostalAddress,
    "phoneNumber": "string",
    "email": "string",
    "website": "string",
    "taxLiable": "Boolean",
    "taxAreaId": "GUID",
    "taxAreaDisplayName": "string",
    "taxRegistrationNumber": "string",
    "currencyCode": "string",
    "paymentTermsId": "GUID",
    "shipmentMethodId": "GUID",
    "paymentMethodId":  "GUID",
    "blocked": "string",
    "balance": "decimal",
    "overdueAmount": "numeric",
    "totalSalesExcludingTax": "numeric",
    "lastModifiedDateTime": "datetime"
}


```



