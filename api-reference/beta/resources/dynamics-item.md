---
title: item resource type
description: "Represents an item in Dynamics 365 Business Central."
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
ms.localizationpriority: medium
ms.subservice: "d365-business-central"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# item resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in Dynamics 365 Business Central.

## Methods

| Method                                      |Return Type|Description |
|:--------------------------------------------|:----------|:-----------|
|[Create](../api/dynamics-create-item.md)  |item     |Create an **item** object.|
|[Get](../api/dynamics-item-get.md)      |item     |Get an **item** object.   |
|[Update](../api/dynamics-item-update.md)  |item     |Update an **item** object.|
|[Delete](../api/dynamics-item-delete.md)|none      |Delete an **item** object.|

## Properties
| Property	         | Type	|Description                                          |
|:-------------------|:-------|:----------------------------------------------------|
|id                  |GUID    |The unique ID of the item. Noneditable.             |
|number              |string  |The item number.                                     |
|displayName         |string  |Specifies a description of the item.                 |
|type                |numeric |The inventory type for the item. 1 = inventory item, 2 = service item. This is a required property.|
|blocked             |Boolean |Specifies that transactions with the item can't be posted, for example, because the item is in quarantine. Set to **true**, if item is blocked.|
|baseUnitOfMeasureId |GUID    |Specifies the ID of the unit of measure.             |
|baseUnitOfMeasure   |[NAV.UnitOfMeasure](../resources/dynamics-complextypes.md)|Specifies the unit in which the item is held in inventory.|
|gtin                |numeric |The Global Trade Item Number.                |
|itemCategoryId      |GUID |Specifies the category that the item belongs to. Item categories also contain any assigned item attributes.|
|inventory           |decimal |Specifies how many units, such as pieces, boxes, or cans, of the item are in inventory. Read-Only.|
|unitPrice           |decimal |Specifies the price for one unit of the item in the specified currency.|
|priceIncludesTax    |Boolean |Specifies that the unitPrice includes tax. Set to **true**, if unitPrice includes tax.|
|unitCost            |decimal |Specifies the cost per unit of the item.             |
|taxGroupId          |GUID    |Specifies the ID of the Tax Group for the item.      |
|taxGroupCode        |numeric |A Tax Group represents a group of inventory items or resources that are subject to identical tax terms.|
|lastModifiedDateTime|datetime|The last datetime the item was modified. Read-Only.  |


## Relationships
A Tax Group(taxGroupCode) must exist in the Tax Group table.

## JSON representation

The following JSON representation shows the resource type.


```json
{
      "id": "GUID",
      "number": "string",
      "displayName": "string",
      "type": "string",
      "blocked": "Boolean",
      "baseUnitOfMeasureId": "GUID",
      "baseUnitOfMeasure": "NAV.UnitOfMeasure",
      "gtin": "numeric",
      "itemCategoryId": "GUID",
      "inventory": "decimal",
      "unitPrice": "decimal",
      "priceIncludesTax": "Boolean",
      "unitCost": "decimal",
      "taxGroupId": "GUID",
      "taxGroupCode": "string",
      "lastModifiedDateTime": "datetime"
}

```




