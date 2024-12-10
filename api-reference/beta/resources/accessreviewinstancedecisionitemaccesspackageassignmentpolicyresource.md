---
title: "accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type"
description: "Represents an access package assignment policy for which access is represented through an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents an access package assignment policy for which access is represented through an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. **accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource** is an open type that allows other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackageDisplayName|String| Display name of the access package to which access is granted. |
|accessPackageId|String| Identifier of the access package to which access is granted. |
| displayName | String | Display name of the access package. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).|
| id | String | Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| type | String | Type of resource. This value is always `AccessPackageAssignmentPolicy`. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |



## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource",
  "baseType": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "accessPackageId": "String",
  "accessPackageDisplayName": "String"
}
```
