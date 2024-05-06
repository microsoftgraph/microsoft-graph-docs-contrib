---
title: "approvalIdentitySet resource type"
description: "Represents a keyed collection of identity resources."
author: "asgautam1997"
ms.localizationpriority: medium
ms.subservice: "microsoft-approvals"
doc_type: resourcePageType
---

# approvalIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a keyed collection of [identity](identity.md) resources. It's used to represent a set of identities associated with an approval item.

Inherits from [identitySet](../resources/identityset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|application|[identity](../resources/identity.md)|The application associated with the approval item. Inherited from [identitySet](../resources/identityset.md).|
|device|[identity](../resources/identity.md)|The device associated with the approval item. Inherited from [identitySet](../resources/identityset.md).|
|group|[identity](../resources/identity.md)|The Entra group associated with the approval item.|
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
  "application": {
    "@odata.type": "microsoft.graph.identity"
  },
  "device": {
    "@odata.type": "microsoft.graph.identity"
  },
  "user": {
    "@odata.type": "microsoft.graph.identity"
  },
  "group": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

