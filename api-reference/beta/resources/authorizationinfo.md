---
title: "authorizationInfo resource type"
description: "Represents the "
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: resourcePageType
---

# authorizationInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the collection of identifiers

## Properties
|Property|Type|Description|
|:---|:---|:---|
|certificateUserIds|String collection|Collection of identifiers|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authorizationInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationInfo",
  "certificateUserIds": [
    "String"
  ]
}
```

