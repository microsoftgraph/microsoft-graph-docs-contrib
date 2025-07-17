---
author: spgraph-docs-team
description: "Represents the column values in a listItem resource."
ms.date: 09/11/2017
title: fieldValueSet resource type
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
---
# fieldValueSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the column values in a [listItem](listitem.md) resource.

## Properties

Each user-visible field in the **listItem** is returned as a name-value pair in the **fieldValueSet**.
The example above is for a list that contains four columns, **Author**, **Name**, **Color**, and **Quantity**.

Lookup fields (like `Author` above) aren't returned by default.
Instead, the server returns a 'LookupId' field (like `AuthorLookupId` above) referencing the listItem targeted in the lookup.
The name of the 'LookupId' field is the original field name followed by `LookupId`.

Up to 12 lookup fields may be requested in a single query.
The server returns lookup values if your request includes a `select` statement with the fields you need.
Example:

```http
GET https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}/items?expand=fields(select=Author,BookTitle,PageCount)
```

You may request up to 12 lookup fields in a single query, plus any number of regular fields.

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.fieldValueSet",
       "keyProperty": "id", "openType": true } -->

```json
{
    "Author": "Brad Cleaver",
    "AuthorLookupId": "13",
    "Name": "Kangaroos and Wallabies: A Deep Dive",
    "Color": "Red",
    "Quantity": 350,
}
```



<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/FieldValueSet",
  "suppressions": []
}
-->


