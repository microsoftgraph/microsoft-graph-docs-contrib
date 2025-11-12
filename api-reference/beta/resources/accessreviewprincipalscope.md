---
title: "accessReviewPrincipalScope resource type"
description: " Defines the type of users that are reviewed in an access review."
author: "dotnet-enthusiast"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewPrincipalScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

An accessReviewPrincipalScope object defines type of users to include in an [access review](../resources/accessreviewsv2-overview.md).

Inherits from [accessReviewScope](../resources/accessreviewscope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|scopeType|accessReviewPrincipalScopeType| The type of users to include in the review. The possible values are: `allUsers`, `guestUsers`, `inactiveUsers`, `inactiveGuestUsers`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewPrincipalScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewPrincipalScope",
  "scopeType": "String"
}
```

