---
author: vanshisingh
ms.date: 04/08/2023
title: recycleBinItem resource type
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---
# recycleBinItem resource type

The recycleBinItem resource provides information about a deleted item in the recycleBin.

## Properties

| Property            | Type           | Description
|:------------------- |:-------------- |:-----------------------------------------------
| id                  | string         | Identifier of the delete transaction.
| name                | string         | Name of the item.
| deletedFromLocation | string         | Web site relative URL of the list or folder that originally contained the item.
| size                | int64          | Size of the item in bytes.
| deletedDateTime     | dateTimeOffset | Date and time of the item deletion.

## JSON Representation

Here is a JSON representation of a **microsoft.graph.recycleBinItem** resource.

<!-- {
"blockType": "resource",
"keyProperty": "id",
"baseType": "microsoft.graph.baseItem",
"@odata.type": "microsoft.graph.recycleBinItem",
"optionalProperties": []
}-->

```json
{
  "id": "string",
  "name": "string",
  "deletedFromLocation": "string",
  "size": 1024,
  "deletedDateTime": "string (timestamp)"
}
```

## Methods

| Method                         | Example Request
|:-------------------------------|:--------------------------------------------
| [List recycleBin items](../api/recycleBinItems_list.md)     | GET /recycleBin/items



<!-- {
"type": "#page.annotation",
"description": "The RecycleBinItem resource returns information about a deletion event and its associated resource.",
"keywords": "recycle,bin,recyclebin,delete ",
"createdBy": "API Clinic",
"section": "documentation"
}-->


