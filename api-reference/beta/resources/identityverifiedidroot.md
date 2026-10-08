---
title: "identityVerifiedIdRoot resource type"
description: "Represents the root container for managing Verifiable ID profiles in Microsoft Entra."
author: "tilarso"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# identityVerifiedIdRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root container for managing Verifiable ID profiles in Microsoft Entra.

Inherits from [entity](../resources/entity.md).

## Methods
None.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id        |String | The unique identifier for an verifiedIdProfile. Read-only. Inherited from [entity](../resources/entity.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|profiles|[verifiedIdProfile](../resources/verifiedidprofile.md) collection| Profile containing properties about a Verified ID provider and purpose|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityVerifiedIdRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityVerifiedIdRoot",
  "id": "String"
}
```

