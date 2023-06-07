---
title: "adminForms resource type"
description: "Company-wide configuration for Microsoft Forms"
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: resourcePageType
---

# adminForms resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Company-wide configuration for Microsoft Forms.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminForms](../api/adminforms-get.md)|[microsoft.graph.adminForms](../resources/adminforms.md)|Read the properties and relationships of a [microsoft.graph.adminForms](../resources/adminforms.md) object.|
|[Update adminForms](../api/adminforms-update.md)|[microsoft.graph.adminForms](../resources/adminforms.md)|Update the properties and relationships of a [microsoft.graph.adminForms](../resources/adminforms.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Id. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|settings|[microsoft.graph.formsSettings](../resources/formssettings.md)|Company-wide settings for Microsoft Forms.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminForms",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminForms",
  "id": "String (identifier)",
  "settings": {
    "@odata.type": "microsoft.graph.formsSettings"
  }
}
```

