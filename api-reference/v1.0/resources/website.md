---
title: "website resource type"
description: "Represents a website."
ms.localizationpriority: medium
author: "AAmatino"
ms.prod: applications
doc_type: resourcePageType
---

# website resource type

Namespace: microsoft.graph

Represents a website.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|string|The URL of the website.|
|displayName|string|The display name of the web site.|
|type|websiteType| The possible values are: `other`, `home`, `work`, `blog`, `profile`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.website"
}-->

```json
{
  "address": "string",
  "displayName": "string",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "webSite resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

