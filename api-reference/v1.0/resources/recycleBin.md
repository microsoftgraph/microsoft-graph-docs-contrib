---
author: vanshisingh
ms.date: 04/08/2023
title: recycleBin resource type
description: "RecycleBin Resource Type"
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---
# recycleBin resource type

The recycleBin resource provides a list of recycleBin Items.

## Methods

The **recycleBin** resource does not have any methods.

## Properties

| Property | Type                                         | Description
|:-------- |:-------------------------------------------- |:-----------------------------------------------
| id       | string                                       | Key identifier for recycleBin. Returned only on $select.

## Relationships

| Property     | Type                                          | Description
|:------------ |:--------------------------------------------- |:-----------------------------------------------
| items        | [microsoft.graph.recycleBinItem](recycleBinItem.md) collection | List of the recycleBinitems deleted by the user.

## JSON Representation

Here is a JSON representation of a **microsoft.graph.recycleBin** resource.

<!-- {
"blockType": "resource",
"keyProperty": "id",
"@odata.type": "microsoft.graph.recycleBin",
"optionalProperties": []
}-->

```json
{
  "id": "string",

  /* relationships */
  "items": [{ "@odata.type": "microsoft.graph.recycleBinItem" }]
}
```

<!-- {
"type": "#page.annotation",
"createdBy": "API Clinic",
"section": "documentation"
}-->
