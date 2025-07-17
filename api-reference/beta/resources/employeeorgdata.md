---
title: "employeeOrgData resource type"
description: "Represents organization data associated with a user." 
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: entra-users
author: "yyuank"
ms.date: 08/09/2024
---

# employeeOrgData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents organization data associated with a user. The **employeeOrgData** property of the [user](user.md) entity is a collection of organization attributes. Include both property values when updating **employeeOrgData**; if you omit any, the system sets them to `null`.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
| division | String | The name of the division in which the user works. <br><br>Returned only on `$select`. Supports `$filter`. |
| costCenter | String | The cost center associated with the user. <br><br>Returned only on `$select`. Supports `$filter`. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.employeeOrgData"
}-->

```json
{
  "costCenter": "string",
  "division": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2020-10-24 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "employeeOrgData resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
