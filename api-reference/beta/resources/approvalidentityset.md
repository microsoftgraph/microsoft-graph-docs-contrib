---
title: "approvalIdentitySet resource type"
description: "Represents a keyed collection of identity resources that are associated with an approval item."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "approvals"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# approvalIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a keyed collection of [identity](identity.md) resources that are associated with an approval item.

Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|group|[identity](../resources/identity.md)|The Microsoft Entra group associated with the approval item.|
|user|[identity](../resources/identity.md)|The user associated with the approval item. Inherited from [identitySet](../resources/identityset.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.approvalIdentitySet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approvalIdentitySet",
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "group": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

