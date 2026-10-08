---
title: "identityVerifiedIdRoot resource type"
description: "Represents the root container for managing Verifiable ID profiles in Microsoft Entra."
author: "tilarso"
ms.date: 04/03/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# identityVerifiedIdRoot resource type

Namespace: microsoft.graph

Represents the root container for managing Verifiable ID profiles in Microsoft Entra.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List profiles](../api/identityverifiedidroot-list-profiles.md)|[verifiedIdProfile](../resources/verifiedidprofile.md) collection|Get a list of the verifiedIdProfile objects and their properties.|
|[Create profile](../api/identityverifiedidroot-post-profiles.md)|[verifiedIdProfile](../resources/verifiedidprofile.md)|Create a new verifiedIdProfile object.|
|[Delete profile](../api/identityverifiedidroot-delete-profiles.md)|None|Delete a verifiedIdProfile object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id        |String | The unique identifier for the identityVerifiedIdRoot. Read-only. Inherited from [entity](../resources/entity.md). |

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

