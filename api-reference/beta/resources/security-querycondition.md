---
title: "queryCondition resource type"
description: "Represents the advanced hunting query that defines the behavior of a custom detection rule."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# queryCondition resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the [advanced hunting](../api/security-security-runhuntingquery.md) query that defines the behavior of a [custom detection rule](../resources/security-detectionrule.md).

## Properties
| Property             | Type           | Description                                                                |
|:---------------------|:---------------|:---------------------------------------------------------------------------|
| lastModifiedDateTime | DateTimeOffset | Timestamp of when the query in the custom detection rule was last updated. |
| queryText            | String         | Contents of the query.                                                     |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.queryCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.queryCondition",
  "queryText": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

