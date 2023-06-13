---
title: "accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type"
description: "Represents an access package assignment policy for which access is represented through an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type

Namespace: microsoft.graph

Represents an access package assignment policy for which access is represented through an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. **accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource** is an open type that allows other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessPackageDisplayName|String| Display name of the access package to which access has been granted. |
|accessPackageId|String| Identifier of the access package to which access has been granted. |
| displayName | String | Display name of the access package. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).|
| id | String | Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| type | String | Type of resource. Type will always be `AccessPackageAssignmentPolicy`.  Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |



## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  "accessPackageDisplayName": "String",
  "accessPackageId": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "type": "String"
}
```


