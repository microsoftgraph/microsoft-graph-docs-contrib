---
title: "educationalActivityDetail resource type"
description: "Represents more detail about an undergraduate, graduate, postgraduate degree, or other educational activity for a user."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# educationalActivityDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents more detail about an undergraduate, graduate, postgraduate degree, or other educational activity for a user and is used within an [educationalActivity](educationalActivity.md) resource.

## Properties

| Property     | Type        | Description                                                   |
|:-------------|:------------|:--------------------------------------------------------------|
|abbreviation  |String       |Shortened name of the degree or program (example: PhD, MBA)    |
|activities    |String       |Extracurricular activities undertaken alongside the program.   |
|awards        |String       |Any awards or honors associated with the program.              |
|description   |String       |Short description of the program provided by the user.         |
|displayName   |String       |Long-form name of the program that the user provided.          |
|fieldsOfStudy |String       |Majors and minors associated with the program. (if applicable) |
|grade         |String       |The final grade, class, GPA, or score.                          |
|notes         |String       |More notes the user provided.                        |
|webUrl        |String       |Link to the degree or program page.                            |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationalActivityDetail",
  "baseType": null
}-->

```json
{
  "abbreviation": "String",
  "activities": "String",
  "awards": "String",
  "description": "String",
  "displayName": "String",
  "fieldsOfStudy": "String",
  "grade": "String",
  "notes": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationalActivityDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

