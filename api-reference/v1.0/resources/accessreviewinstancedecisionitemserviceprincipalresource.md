---
title: "accessReviewInstanceDecisionItemServicePrincipalResource resource type"
description: "Represents service principals whose access to a resource is represented through an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItemServicePrincipalResource resource type

Namespace: microsoft.graph

Represents service principals whose access to a resource is represented through an [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. **accessReviewInstanceDecisionItemServicePrincipalResource** is an open type that allows for other properties to be passed in.

Inherits from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
| appId | String | The globally unique identifier of the application to which access has been granted. |
| displayName | String | Display name of the resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md).|
| id | String | Identifier of the decision item resource. Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |
| type | String | Type of resource. Type will always be `ServicePrincipal`.  Inherited from [accessReviewInstanceDecisionItemResource](accessreviewinstancedecisionItemresource.md). |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessreviewinstancedecisionitemserviceprincipalresource",
  "baseType": "microsoft.graph.accessReviewInstanceDecisionItemResource",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessreviewinstancedecisionitemserviceprincipalresource",
  "appId": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "type": "String"
}
```
