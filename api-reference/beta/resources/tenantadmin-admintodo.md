---
title: "adminTodo resource type"
description: "**Company wide configuration for Microsoft Todo**"
author: "**zadinsmo**"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminTodo resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Company wide configuration for Microsoft Todo**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminTodo](../api/tenantadmin-admintodo-get.md)|[microsoft.graph.tenantAdmin.adminTodo](../resources/tenantadmin-admintodo.md)|Read the properties and relationships of a [microsoft.graph.tenantAdmin.adminTodo](../resources/tenantadmin-admintodo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**Unique Id** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|settings|[microsoft.graph.tenantAdmin.todoSettings](../resources/tenantadmin-todosettings.md)|**Company wide settings for Microsoft Todo**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAdmin.adminTodo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAdmin.adminTodo",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.tenantAdmin.todoSettings"
  }
}
```

