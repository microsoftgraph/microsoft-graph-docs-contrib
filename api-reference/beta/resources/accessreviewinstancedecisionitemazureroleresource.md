---
title: "accessReviewInstanceDecisionItemAzureRoleResource resource type"
description: "Represents Azure resource roles for which access is represented through an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemAzureRoleResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents Azure resource roles for which access is represented through an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. **accessReviewInstanceDecisionItemAzureRoleResource** is an open type that allows for other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
| displayName | String | Display name of the Azure role. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).|
| id | String | Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| type | String | Type of resource. Type will always be `AzureRole`.  Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| scope | [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md) | Details of the scope this role is associated with. |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",
  "baseType": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItemAzureRoleResource",
  "id": "String (identifier)",
  "displayName": "String",
  "type": "String",
  "scope": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
  }
}
```
