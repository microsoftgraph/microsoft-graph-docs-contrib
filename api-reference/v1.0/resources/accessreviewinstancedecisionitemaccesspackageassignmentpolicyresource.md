---
title: "accessReviewInstance resource type"
description: "Represents a recurrence of an `accessReviewScheduleDefinition`."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---


# accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource resource type

Namespace: microsoft.graph

Represents a principal's access to an access package assignment policy. accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource is an open type that allows other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName | String | Display name of the access package. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).|
| id | String | Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| type | String | Type of resource. Type is always `AccessPackageAssignmentPolicy`.  Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
|accessPackageId|String| Identifier of the access package to which access has been granted. |
|accessPackageDisplayName|String| Display name of the to which access has been granted. |


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
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "accessPackageId": "String",
  "accessPackageDisplayName": "String"
}
```

