---
title: "approvalItemViewPoint resource type"
description: "Represents user viewpoints data on the approval item. The data includes the user's roles regarding the approval item."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# approvalItemViewPoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's roles for an [approvalItem](../resources/approvalitem.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roles|approverRole collection|Collection of roles associated with the requesting user for the approval item. If the owner of the approval item is making the request, the collection of roles includes the role `owner`. If the requesting user was assigned as an approver, the collection includes the role `approver`.|

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

