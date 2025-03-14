---
title: "keyValuePair resource type"
description: "Represents a key-value pair for sensitivity labels in Microsoft Purview Information Protection."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# keyValuePair resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key-value pair for sensitivity labels in Microsoft Purview Information Protection.

## Properties

| Property | Type   | Description                    |
| :------- | :----- | :----------------------------- |
| name     | String | Name for this key-value pair.  |
| value    | String | Value for this key-value pair. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

