---
title: "approvalItemViewPoint resource type"
description: "Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalItemViewPoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents user viewpoints data on the ApprovalItem. The data includes the users roles regarding the approval item.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roles|approverRole collection|Collection of roles in regard to an ApprovalItem on behalf of the requesting user.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.approvalItemViewPoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalItemViewPoint",
  "roles": [
    "String"
  ]
}
```

