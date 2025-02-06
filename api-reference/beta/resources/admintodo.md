---
title: "adminTodo resource type"
description: "Company-wide configuration for Microsoft Todo"
author: "zadinsmo"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# adminTodo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide configuration for Microsoft Todo.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/admintodo-get.md)|[adminTodo](../resources/admintodo.md)|Read the properties and relationships of a [adminTodo](../resources/admintodo.md) object.|
|[Update](../api/admintodo-update.md)|[adminTodo](../resources/admintodo.md)|Update the properties and relationships of a [adminTodo](../resources/admintodo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID. Inherited from [entity](../resources/entity.md).|
|settings|[todoSettings](../resources/todosettings.md)|Company-wide settings for Microsoft Todo.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminTodo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminTodo",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "todoSettings"
  }
}
```

