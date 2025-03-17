---
title: "itemCategory resource type"
description: "Represents a category for many items in Dynamics 365 Business Central."
services: "project-madeira"
documentationcenter: ""
author: "SusanneWindfeldPedersen"
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# itemCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a category for many items in Dynamics 365 Business Central.

## Methods

| Method                                                          | Return Type  |Description             |
|:----------------------------------------------------------------|:-------------|:-----------------------|
|[Get item categories](../api/dynamics-itemcategories-get.md)      |[itemCategory](dynamics-itemcategories.md)|Get an item category.   |
|[Create item categories](../api/dynamics-create-itemcategories.md)  |[itemCategory](dynamics-itemcategories.md)|Create an item category.|
|[Update item categories](../api/dynamics-itemcategories-update.md) |[itemCategory](dynamics-itemcategories.md)|Update an item category.|
|[Delete item categories](../api/dynamics-itemcategories-delete.md)|None          |Delete an item category.|

## Properties

| Property	         | Type	  |Description                                     |
|:-------------------|:-------|:-----------------------------------------------|
|code                |String  |The item category code.                          |
|displayName         |String  |The display name of the item category.                |
|id                  |String  |The unique ID of the item category. Noneditable.|
|lastModifiedDateTime|Datetime|The date and time when the item category was last modified. Read-Only.|


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

```json
{
  "code": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "Datetime"
}
```
