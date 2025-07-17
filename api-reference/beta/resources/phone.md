---
title: "phone resource type"
description: "Represents a phone number."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-directory-management"
author: "dkershaw10"
ms.date: 07/23/2024
---

# phone resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a phone number.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|number|string|The phone number.|
|type|String|The type of phone number. Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.phone"
}-->

```json
{
  "number": "string",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "phone resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


