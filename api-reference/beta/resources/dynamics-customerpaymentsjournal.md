---
title: customerPaymentJournal resource type
description: A customer payments journal in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
---

# customerPaymentsJournal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customer payment journal in Dynamics 365 Business Central.

## Methods

| Method               | Return Type             |Description                      |
|:---------------------|:------------------------|:--------------------------------|
|[Get customerPaymentJournal](../api/dynamics-customerpaymentsjournal-get.md)      |customerPaymentJournals|Gets a customer payment journal.   |
|[Post customerPaymentJournal](../api/dynamics-create-customerpaymentsjournal.md)  |customerPaymentJournals|Creates a customer payment journal.|
|[Patch customerPaymentJournal](../api/dynamics-customerpaymentsjournal-update.md) |customerPaymentJournals|Updates a customer payment journal.|
|[Delete customerPaymentJournal](../api/dynamics-customerpaymentsjournal-delete.md)|none                     |Deletes a customer payment journal.|

## Properties
| Property	         | Type	                 |Description                                                             |
|:-------------------|:----------------------|:-----------------------------------------------------------------------|
|id                  |GUID                   |The unique ID of the customer payment journal. Non-editable.           |
|code                |string, maximum size 10| The code of the customer payment journal.                             |
|displayName         |string, maximum size 50| The display name of the customer payment journal.                     |
|lastModifiedDateTime|datetime               |The last datetime the customer payment journal was modified. Read-Only.|

## Relationships

## JSON representation

The following JSON representation shows the resource type.


```json
{
  "id": "GUID",
  "code": "String",
  "displayName": "String",
  "lastModifiedDateTime": "datetime"
}
```



