---
title: "queryCondition resource type"
description: "Describes the advanced hunting query behind the custom detection rule"
author: "mmekler"
ms.localizationpriority: medium
ROBOTS: NOINDEX
ms.prod: "security"
doc_type: resourcePageType
---

# queryCondition resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the advanced hunting query behind a [Custom Detection Rule](../resources/security-detectionrule.md).

## Properties
| Property             | Type           | Description                                                                |
|:---------------------|:---------------|:---------------------------------------------------------------------------|
| lastModifiedDateTime | DateTimeOffset | Timestamp of when the query in the custom detection rule was last updated. |
| queryText            | String         | Contents of the query.                                                     |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

