---
title: "saveAsTemplate resource type"
description: "Represents the required fields to save page as a template in SharePoint."
author: Yadong1106
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
---

#  saveAsTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the required fields to save page as a template in SharePoint.

## Properties

| Property | Type | Description |
| :---------| :------| :------------|
| title | String | The title of the site page template to create. Optional. |
| name | String | The name of the site page template to create. Required. |


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.saveastemplate",
  "baseType": null
}-->

```json
{
  "title": "String",
  "name": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Save as template request body",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
