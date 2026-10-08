---
title: "accessReviewAccessPackageAssignmentPolicyScope resource type"
description: "A type of accessReviewResourceScope that allows access package assignment to be the resource scope of an access review."
author: "dotnet-enthusiast"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessReviewAccessPackageAssignmentPolicyScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

The accessReviewAccessPackageAssignmentPolicyScope defines the scope of the resource in an [access review](../resources/accessreviewsv2-overview.md) when the review is an access package assignment review.


Inherits from [accessReviewResourceScope](../resources/accessreviewresourcescope.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackageDisplayName|String| The display name of the access package. |
|accessPackageId|String| The access package identifier. |
|catalogDisplayName|String| The display name of the catalog. |
|catalogId|String| The catalog identifier. |
|displayName|String| The display name of the access package. Inherited from [accessReviewResourceScope](../resources/accessreviewresourcescope.md).|
|resourceId|String| The identifier of the access package assignment policy. Inherited from [accessReviewResourceScope](../resources/accessreviewresourcescope.md).|
|scopeType|accessReviewResourceScopeType|The scope type. Inherited from [accessReviewResourceScope](../resources/accessreviewresourcescope.md). The value is `accessPackageAssignmentPolicy`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewAccessPackageAssignmentPolicyScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewAccessPackageAssignmentPolicyScope",
  "resourceId": "String",
  "scopeType": "String",
  "displayName": "String",
  "accessPackageId": "String",
  "accessPackageDisplayName": "String",
  "catalogId": "String",
  "catalogDisplayName": "String"
}
```

