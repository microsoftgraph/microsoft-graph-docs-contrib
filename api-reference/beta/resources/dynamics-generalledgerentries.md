---
title: generalLedgerEntries resource type 
description: A general ledger entry in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# generalLedgerEntries resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a general ledger entry in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:-------------|:-------------|:----------|
|[Get generalLedgerEntries](../api/dynamics-generalledgerentries-get.md)|generalLedgerEntries|Get a general ledger (G/L) entry object.|

## Properties
| Property	         | Type	                 |Description                                  |
|:-------------------|:----------------------|:--------------------------------------------|
|accountId           |GUID                   |Specifies the accountId of the G/L entry.    |
|accountNumber       |string |Specifies the accountNumber of the G/L entry. The maximum size is 20.|
|creditAmount        |numeric                |Specifies the creditAmount of the G/L entry. |
|debitAmount         |numeric                |Specifies the debitAmount of the G/L entry.  |
|description         |string |Specifies the description of the G/L entry. The maximum size is 50.  |
|documentNumber      |string |Specifies the document number of the G/L entry. The maximum size is 20.|
|documentType        |string                 |Specifies the document type of the G/L entry.|
|id                  |numeric                |The unique ID of the G/L entry.              |
|lastModifiedDateTime|datetime               |The last date time when the G/L entry was modified.|
|postingDate         |date                   |Specifies the posting date of the G/L entry. |


## Relationships
None.

## JSON representation

The following is a JSON representation of the resource.


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
  "lastModifiedDateTime": "Datetime"
  "postingDate": "Date",
}
```



