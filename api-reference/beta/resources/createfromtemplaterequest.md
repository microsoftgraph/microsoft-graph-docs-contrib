---
title: "Create from page template request body"
description: "The JSON representation of the required fields to create a page from a template in SharePoint."
author: Yadong1106
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
---

# sortProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property             | Type                                         | Description                                                                                                                                                                                                      |
| :------------------- | :------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| title                | String                                         | Title of the site page template to be created.  Optional.                                                                                                                                                                                  |
| name                 | String                                         | Name of the site page template to be created. Required.                                                                                                                          |
| templateId                   | String                                         | Id of an existing page templated. Required.                                                                                                                          |

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