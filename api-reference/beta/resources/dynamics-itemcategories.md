---
title: "itemCategories resource type"
description: "Represents a category for a number of items in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# itemCategories resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a category for a number of items in Dynamics 365 Business Central.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[Get itemCategories](../api/dynamics-itemcategories-get.md)      |[itemCategories](dynamics-itemcategories.md.md)|Get an item category.   |
|[Post itemCategories](../api/dynamics-create-itemcategories.md)  |[itemCategories](dynamics-itemcategories.md.md)|Create an item category.|
|[Patch itemCategories](../api/dynamics-itemcategories-update.md) |[itemCategories](dynamics-itemcategories.md.md)|Update an item category.|
|[Delete itemCategories](../api/dynamics-itemcategories-delete.md)|None          |Delete an item category.|

## Properties
| Property	         | Type	  |Description                                     |
|:-------------------|:-------|:-----------------------------------------------|
|code                |String  |The item category code.                          |
|displayName         |String  |The display name of the item category.                |
|id                  |String  |The unique ID of the item category. Non-editable.|
|lastModifiedDateTime|Datetime|The date and time when the item category was last modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the itemCategories.

```json
{
  "id": "String (identifier)",
  "code": "String",
  "displayName": "String",
  "lastModifiedDateTime": "Datetime"
}
```
