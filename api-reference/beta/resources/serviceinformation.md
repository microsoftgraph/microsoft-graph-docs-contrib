---
title: "serviceInformation resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# serviceInformation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The 'serviceInformation' resource type represents basic descriptive data about cloud services that a user has chosen to refer to from their account.

## Properties

| Property     | Type        | Description                                            |
|:-------------|:------------|:-------------------------------------------------------|
|name          | String      | The name of the cloud service (ie: Twitter, Instagram) |
|webUrl        | String      | Contains the URL for the service being referenced.     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.serviceInformation",
  "baseType": null
}-->

```json
{
  "name": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "serviceInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->