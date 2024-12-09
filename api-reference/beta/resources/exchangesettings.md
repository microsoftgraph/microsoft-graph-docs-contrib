---
title: "exchangeSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# exchangeSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/usersettings-list-exchange.md)|[exchangeSettings](../resources/exchangesettings.md) collection|Get a list of the exchangeSettings objects and their properties.|
|[Create](../api/usersettings-post-exchange.md)|[exchangeSettings](../resources/exchangesettings.md)|Create a new exchangeSettings object.|
|[Get](../api/exchangesettings-get.md)|[exchangeSettings](../resources/exchangesettings.md)|Read the properties and relationships of an exchangeSettings object.|
|[Update](../api/exchangesettings-update.md)|[exchangeSettings](../resources/exchangesettings.md)|Update the properties of an exchangeSettings object.|
|[Delete](../api/usersettings-delete-exchange.md)|None|Delete an exchangeSettings object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherits from [entity](../resources/entity.md)|
|inPlaceArchiveMailboxId|String|**TODO: Add Description**|
|primaryMailboxId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeSettings",
  "primaryMailboxId": "String",
  "inPlaceArchiveMailboxId": "String",
  "id": "String (identifier)"
}
```

