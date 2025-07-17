---
title: "website resource type"
description: "Represents a web site."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: mail
author: "AAmatino"
ms.date: 03/21/2024
---

# website resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a web site.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|String| Possible values are: `other`, `home`, `work`, `blog`, `profile`.|
|address|string|The URL of the website.|
|displayName|string|The display name of the web site.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.website"
}-->

```json
{
  "type": "String",
  "address": "string",
  "displayName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "webSite resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


