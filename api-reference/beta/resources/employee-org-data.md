---
title: "employeeOrgData resource type"
description: "Represents organization data associated with a user." 
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "cmmdesai"
---

# employeeOrgData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents organization data associated with a user. The **employeeOrgData** property of the [user](user.md) entity is a collection of organization attributes.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
| division | String | The name of the division in which the user works. <br><br>Returned only on $select. Supports $filter. |
| costCenter | String | The cost center associated with the user. <br><br>Returned only on $select. Supports $filter. |

## JSON representation

Here is a JSON representation of the resource

```json
  "employeeOrgData": {
      "costCenter": "string",
      "division": "string"
  }
```
