---
title: "profileSourceAnnotation resource type"
description: "Represents the sources the user data comes from, such as Entra, UPA, Connector, etc."
ms.localizationpriority: medium
author: "yuanlec"
ms.prod: "people"
doc_type: resourcePageType
---

# profileSourceAnnotation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sources the user data comes from, such as Entra, UPA, Connector, etc.

## Properties
| Property	    | Type	           |Description                                            |
|:--------------|:-----------------|:------------------------------------------------------|
|id             |String            |Unique identifier of the source.                       |
|profileSource  |profileSource     |[Details of the Source](url).                          |
|isDefaultSource|Boolean           |Flag to indicate whether the source is the default one.|
|properties     |Collection(String)|Names of properties having data from this source.      |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileSourceAnnotation"
}-->

```json
{
  "id": "String (GUID)",
  "profileSource": {
    "@odata.type": "microsoft.graph.profileSource"
  },
  "isDefaultSource": "Boolean",
  "properties": "Collection(String)"
}
```
