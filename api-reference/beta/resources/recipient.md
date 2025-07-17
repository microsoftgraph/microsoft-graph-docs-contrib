---
title: "recipient resource type"
description: "Represents information about a user in the sending or receiving end of an event, message or group post. "
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: mail
author: "SuryaLashmiS"
ms.date: 03/21/2024
---

# recipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a user in the sending or receiving end of an event, message or group post.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|emailAddress|[EmailAddress](emailaddress.md)|The recipient's email address.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recipient"
}-->

```json
{
  "emailAddress": {"@odata.type": "microsoft.graph.emailAddress"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "recipient resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


