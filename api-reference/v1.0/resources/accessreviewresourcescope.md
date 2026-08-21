---
title: "accessReviewResourceScope resource type"
description: "Defines the type of resource that is reviewed in an access review."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/10/2026
---

# accessReviewResourceScope resource type

Namespace: microsoft.graph

An **accessReviewResourceScope** object defines the type of resource that users have access to in an [access review](../resources/accessreviewsv2-overview.md).

Use it in the **resourceScopes** collection of a [principalResourceMembershipsScope](../resources/principalresourcemembershipsscope.md) object to identify the resource whose access is reviewed.

Inherits from [accessReviewScope](../resources/accessreviewscope.md).

This type is inherited by [accessReviewAccessPackageAssignmentPolicyScope](../resources/accessreviewaccesspackageassignmentpolicyscope.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String| The display name of the resource. |
|resourceId|String| The identifier of the resource. |
|scopeType|accessReviewResourceScopeType| The type of the resource. The possible values are: `group`, `catalog`, `servicePrincipal`, `directoryRole`, `accessPackageAssignmentPolicy`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewResourceScope"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewResourceScope",
  "resourceId": "String",
  "scopeType": "String",
  "displayName": "String"
}
```
