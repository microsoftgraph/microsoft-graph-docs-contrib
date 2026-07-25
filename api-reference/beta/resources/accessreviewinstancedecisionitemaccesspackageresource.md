---
title: "accessReviewInstanceDecisionItemAccessPackageResource resource type"
description: "Represents an access package for which access is represented through an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/10/2026
---

# accessReviewInstanceDecisionItemAccessPackageResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

In an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md), the **resource** property can contain an **accessReviewInstanceDecisionItemAccessPackageResource** object for an access package. This open type allows other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackageAssignmentPolicyDisplayName|String|Display name of the access package assignment policy through which access is granted.|
|accessPackageAssignmentPolicyId|String|Identifier of the access package assignment policy through which access is granted.|
|displayName|String|Display name of the access package. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionitemresource.md).|
|id|String|Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionitemresource.md).|
|type|String|Type of resource. This value is always `AccessPackage`. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionitemresource.md).|



## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemAccessPackageResource",
  "baseType": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAccessPackageResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "accessPackageAssignmentPolicyId": "String",
  "accessPackageAssignmentPolicyDisplayName": "String"
}
```
