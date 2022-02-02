---
title: "security.keyValuePair resource type"
description: "Key value pair for Information Protection sensitivity labels."
author: "tommoser"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# security.keyValuePair resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Key value pair for Information Protection sensitivity labels.

## Properties

| Property | Type   | Description                   |
| :------- | :----- | :---------------------------- |
| name     | String | Name for this key-value pair  |
| value    | String | Value for this key-value pair |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.keyValuePair"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.keyValuePair",
  "name": "String",
  "value": "String"
}
```

