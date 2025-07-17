---
title: generalLedgerEntry resource type
description: A general ledger entry in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# generalLedgerEntry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a general ledger entry in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get general ledger entries](../api/dynamics-generalledgerentries-get.md)|generalLedgerEntry|Get a general ledger entry object.|

## Properties
| Property	         | Type	                 |Description                                  |
|:-------------------|:----------------------|:--------------------------------------------|
|accountId           |GUID                   |Specifies the account ID of the general ledger entry.    |
|accountNumber       |string |Specifies the account number of the general ledger entry. The maximum size is 20 characters.|
|creditAmount        |numeric                |Specifies the credit amount of the general ledger entry. |
|debitAmount         |numeric                |Specifies the debit amount of the general ledger entry.  |
|description         |string |Specifies the description of the general ledger entry. The maximum size is 50 characters.  |
|documentNumber      |string |Specifies the document number of the general ledger entry. The maximum size is 20 characters.|
|documentType        |string                 |Specifies the document type of the general ledger entry.|
|id                  |numeric                |The unique identifier for the general ledger entry.              |
|lastModifiedDateTime|datetime               |The last date time when the general ledger entry was modified.|
|postingDate         |date                   |Specifies the posting date of the general ledger entry. |


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.


```json
{
  "accountId": "GUID",
  "accountNumber": "String",
  "creditAmount": "Decimal",
  "debitAmount": "Decimal",
  "description": "String",
  "documentNumber": "String",
  "documentType": "String",
  "id": "Int",
  "lastModifiedDateTime": "Datetime",
  "postingDate": "Date"
}
```



