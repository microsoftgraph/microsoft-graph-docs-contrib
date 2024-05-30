---
title: "emailAddress resource type"
description: "The name and email address of a contact or message recipient."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: resourcePageType
---

# emailAddress resource type

Namespace: microsoft.graph

The name and email address of a contact or message recipient.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|String|The email address of the person or entity.|
|name|String|The display name of the person or entity.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.emailAddress"
}-->

```json
{
  "address": "string",
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "emailAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

