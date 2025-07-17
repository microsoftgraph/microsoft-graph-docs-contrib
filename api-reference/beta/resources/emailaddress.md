---
title: "emailAddress resource type"
description: "Represents the name and SMTP address of an entity instance, for example, a message recipient or calendar owner."
ms.localizationpriority: medium
author: "SuryaLashmiS"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# emailAddress resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the name and SMTP address of an entity instance, for example, a message recipient or calendar owner.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|String|The email address of an entity instance.|
|name|String|The display name of an entity instance.|

## Relationships
None.

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
<!--
{
  "type": "#page.annotation",
  "description": "emailAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


