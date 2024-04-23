---
title: "permissionsCreepIndex resource type"
description: "Assigns a score based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsCreepIndex resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assigns a score based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|score|Int32|This value represents how much risk an identity poses. This risk range is classified in three buckets: 0-33: low, 34-66: medium, 67-100: high..|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsCreepIndex"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsCreepIndex",
  "score": "Integer"
}
```

