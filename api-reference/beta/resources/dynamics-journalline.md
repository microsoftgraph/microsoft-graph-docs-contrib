---
title: journalLine resource type
description: A journal line in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# journalLine resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a line in a journal in Dynamics 365 Business Central.

## Methods

| Method                                                    | Return Type|Description         |
|:----------------------------------------------------------|:-----------|:-------------------|
|[Get journal line](../api/dynamics-journalline-get.md)      |journalLine|Gets a journal line.   |
|[Create journal line](../api/dynamics-create-journalline.md)  |journalLine|Creates a journal line.|
|[Update journal line](../api/dynamics-journalline-update.md) |journalLine|Updates a journal line.|
|[Delete journal line](../api/dynamics-journalline-delete.md)|none        |Deletes a journal line.|

## Properties
| Property	           | Type	                |Description                                                        |
|:---------------------|:-----------------------|:------------------------------------------------------------------|
|id                    |GUID                    |The unique ID of the journal line. Non-editable.                   |
|journalDisplayName    |string, maximum size 10 |The display name of the journal that this line belongs to. Read-Only.|
|lineNumber            |integer                 |The number of the journal line.                                    |
|accountId             |GUID                    |The unique ID of the account that the journal line is related to.  |
|accountNumber         |string, maximum size 20 |The number of the account that the journal line is related to.     |
|postingDate           |date                    |The date that the journal line is posted.                          |
|documentNumber        |string, maximum size 20 |Specifies a document number for the journal line.                  |
|externalDocumentNumber|string, maximum size 20 |Specifies an external document number for the journal line.        |
|amount                |decimal                 |Specifies the total amount (including VAT) that the journal line consists of.|
|description           |string, maximum size 50 |The description of the journal line, provided by the user or autocreated.|
|comment               |string, maximum size 250|A user specified comment on the journal line.                      |
|lastModifiedDateTime  |datetime                |The last datetime the journal line was modified. Read-Only.        |

## Relationships
A journal line is a subpage of a journal. It cannot be accessed directly.

A journal line can be a "Parent Entity" of the dimension lines.

An Account (accountId) must exist in the Accounts table.


## JSON representation

The following JSON representation shows the resource type.


```json
{
    "id": "GUID",
    "journalDisplayName": "string",
    "lineNumber": "integer",
    "accountId": "GUID",
    "accountNumber": "string",
    "postingDate": "date",
    "documentNumber": "string",
    "externalDocumentNumber": "string",
    "amount": "decimal",
    "description": "string",
    "comment": "string",
    "lastModifiedDateTime": "datetime"
}
```


