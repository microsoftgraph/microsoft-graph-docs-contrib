---
title: "accessReviewPrincipalScope resource type"
description: "Defines the type of users that are reviewed in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/10/2026
---

# accessReviewPrincipalScope resource type

Namespace: microsoft.graph

An **accessReviewPrincipalScope** object defines the type of users to include in an [access review](../resources/accessreviewsv2-overview.md), without writing a query expression.

Use it in the **principalScopes** collection of a [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) object to state which population of principals has its access reviewed.

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
