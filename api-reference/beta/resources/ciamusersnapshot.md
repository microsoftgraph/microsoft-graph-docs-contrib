---
title: "ciamUserSnapshot resource type"
description: "Details the user referred to by the sign-up log entry"
author: "nanguil"
ms.date: 05/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# ciamUserSnapshot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details the user referred to by the sign-up log entry


## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|ID of the user that initiated the sign-in.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ciamUserSnapshot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ciamUserSnapshot",
  "userId": "String"
}
```

