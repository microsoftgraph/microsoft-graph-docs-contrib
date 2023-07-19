---
title: "adminTodo resource type"
description: "Company-wide configuration for Microsoft Todo"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminTodo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide configuration for Microsoft Todo.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminTodo](../api/admintodo-get.md)|[adminTodo](../resources/admintodo.md)|Read the properties and relationships of a [adminTodo](../resources/admintodo.md) object.|
|[Update adminTodo](../api/admintodo-update.md)|[adminTodo](../resources/admintodo.md)|Update the properties and relationships of a [adminTodo](../resources/admintodo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID. Inherited from [entity](../resources/entity.md).|
|settings|[todoSettings](../resources/todosettings.md)|Company-wide settings for Microsoft Todo.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

