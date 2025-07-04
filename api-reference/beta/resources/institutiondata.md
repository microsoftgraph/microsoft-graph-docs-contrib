---
title: "institutionData resource type"
description: "institutionData resource type"
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# institutionData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents more information about an undergraduate, graduate, postgraduate degree, or other educational activity for a user and is used within an [educationalActivity](educationalActivity.md) resource.

## Properties

| Property     | Type                                 | Description                                              |
|:-------------|:-------------------------------------|:---------------------------------------------------------|
|description   |String                                |Short description of the institution the user studied at. |
|displayName   |String                                |Name of the institution the user studied at.              |
|location      |[physicalAddress](physicaladdress.md) |Address or location of the institute.                     |
|webUrl        |String                                |Link to the institution or department homepage.           |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.institutionData",
  "baseType": null
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "location": {"@odata.type": "microsoft.graph.physicalAddress"},
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "institutionData resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

