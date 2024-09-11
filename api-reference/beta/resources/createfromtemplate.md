---
title: "createFromPageTemplate resource type"
description: "Represents the required fields to create a page from a template in SharePoint."
author: Yadong1106
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
---

# createFromPageTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the required fields to create a page from a template in SharePoint.

## Properties

| Property | Type | Description |
| :---------| :-----| :------------- |
| title | String | The title of the site page template to create. Optional. |
| name | String | The name of the site page template to create. Required. |
| templateId | String | The identifier for an existing page template. Required. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.createFromTemplate",
  "baseType": null
}-->

```json
{
  "title": "String",
  "name": "String",
  "templateId": "String"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "create from template request body",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
