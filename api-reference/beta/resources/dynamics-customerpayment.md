---
title: "customerPayment resource type"
description: "Represents a customer payment in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
---

# customerPayment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customer payment in Dynamics 365 Business Central. A customer payment is entered as a line in a customer payment journal.

## Methods

| Method         | Return Type  |Description|
|:---------------|:-------------|:----------|
|[Get customerPayment](../api/dynamics-customerpayment-get.md)|[customerPayment](dynamics-customerpayment.md)|Get a customer payment.|
|[Post customerPayment](../api/dynamics-create-customerpayment.md)|[customerPayment](dynamics-customerpayment.md)|Create a customer payment.|
|[Patch customerPayment](../api/dynamics-customerpayment-update.md)|[customerPayment](dynamics-customerpayment.md)|Update a customer payment.|
|[Delete customerPayment](../api/dynamics-customerpayment-delete.md)|None|Delete a customer payment.|

## Properties
| Property	   | Type	 |Description|
|:-------------|:--------|:----------|
|amount|Decimal|Specifies the total amount (including VAT) that the customer payment consists of.|
|appliesToInvoiceId|GUID|The unique ID of the invoice that the payment is related to.|
|appliesToInvoiceNumber|String|The number of the invoice that the payment is related to. Maximum supported size is 20 characters.|
|comment|String|A user specified comment on the customer payment. Maximum supported size is 250 characters.|
|contactId|String|The exchange contact ID for the given customer. If a customer id isn't specified, we'll use the contact id to find it. Maximum supported size is 250 characters.|
|customerId|GUID|The unique ID of the customer that the payment is related to.|
|customerNumber|String|The number of the customer that the payment is related to. Maximum supported size is 20 characters.|
|description|String|The description of the customer payment, provided by the user or autocreated. Maximum supported size is 50 characters.|
|documentNumber|String|Specifies a document number for the customer payment. Maximum supported size is 20 characters.|
|externalDocumentNumber|String|Specifies an external document number for the customer payment. Maximum supported size is 20 characters.|
|id|GUID|The unique ID of the customer payment. Non-editable.|
|journalDisplayName|String|The customer payment journal in which the payment record is a line.|
|lastModifiedDateTime|Datetime|The last datetime the customer payment was modified. Read-Only.|
|lineNumber|Integer|The number of the customer payment.|
|postingDate|Date|The date that the customer payment is posted.|

## Relationships
A customer payment is a subpage of a customer payment journal. It can't be accessed directly.

A customer payment can be a "Parent Entity" of the dimension lines.

A Customer (customerId) must exist in the Customers table.

An Invoice (appliesToInvoiceId) must exist in the Sales Invoices Table.


## JSON representation

Here's a JSON representation of the resource.

```json
{
  "amount": "Decimal",
  "appliesToInvoiceId": "GUID",
  "appliesToInvoiceNumber": "String",
  "comment": "String",
  "contactId": "String",
  "customerId": "GUID",
  "customerNumber": "String",
  "description": "String",
  "documentNumber": "String",
  "externalDocumentNumber": "String",
  "id": "GUID",
  "journalDisplayName": "String",
  "lastModifiedDateTime": "Datetime",
  "lineNumber": "Integer",
  "postingDate": "Date"
}
```



