---
title: "timeZoneBase resource type"
description: "The basic representation of a time zone."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: mail
author: "SuryaLashmiS"
ms.date: 03/21/2024
---

# timeZoneBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The basic representation of a time zone.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| name | string | The name of a time zone. It can be a standard time zone name such as "Hawaii-Aleutian Standard Time", or "Customized Time Zone" for a custom time zone. |


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeZoneBase"
}-->

```json
{
  "name": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeZoneBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


