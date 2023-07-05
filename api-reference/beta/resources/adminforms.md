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


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get adminForms](../api/adminforms-get.md)|[adminForms](../resources/adminforms.md)|Read the properties and relationships of a [adminForms](../resources/adminforms.md) object.|
|[Update adminForms](../api/adminforms-update.md)|[adminForms](../resources/adminforms.md)|Update the properties and relationships of a [adminForms](../resources/adminforms.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID. Inherited from [entity](../resources/entity.md).|
|settings|[formsSettings](../resources/formssettings.md)|Company-wide settings for Microsoft Forms.|

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
    "@odata.type": "formsSettings"
  }
}
```

