---
title: "adminForms resource type"
description: "**Company wide configuration for Microsoft Forms**"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminForms resource type

Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Company wide configuration for Microsoft Forms**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminForms](../api/tenantadmin-adminforms-get.md)|[microsoft.graph.tenantAdmin.adminForms](../resources/tenantadmin-adminforms.md)|Read the properties and relationships of a [microsoft.graph.tenantAdmin.adminForms](../resources/tenantadmin-adminforms.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**Unique Id** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|settings|[microsoft.graph.tenantAdmin.formsSettings](../resources/tenantadmin-formssettings.md)|**Company wide settings for Microsoft Forms**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantAdmin.adminForms",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantAdmin.adminForms",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.tenantAdmin.formsSettings"
  }
}
```

