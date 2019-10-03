---
title: "configuration resource type"
description: "Specifies additional application IDs that are allowed to manage the connection and to index content in a connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: ""
doc_type: "resourcePageType"
---

# configuration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies additional application IDs that are allowed to manage the connection and to index content in a [connection](../resources/connection.md).

## Properties

| Property       | Type              | Description |
|:---------------|:------------------|:------------|
| authorizedApps | String collection | A collection of application IDs for registered Azure Active Directory apps that are allowed to manage the connection and to index content in the connection. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.configuration",
  "baseType": null
}-->

```json
{
  "authorizedApps": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "configuration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
