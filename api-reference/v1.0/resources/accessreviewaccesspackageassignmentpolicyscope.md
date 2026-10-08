---
title: "accessReviewAccessPackageAssignmentPolicyScope resource type"
description: "Represents an access review resource scope that uses an access package assignment policy as the reviewed resource."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/10/2026
---

# accessReviewAccessPackageAssignmentPolicyScope resource type

Namespace: microsoft.graph

The **accessReviewAccessPackageAssignmentPolicyScope** object defines the scope of the resource in an [access review](../resources/accessreviewsv2-overview.md) when the review is an access package assignment review.

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
