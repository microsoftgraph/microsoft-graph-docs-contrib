---
title: "decisionItemPrincipalResourceMembership resource type"
description: "Each decision in an access review represents a principal's access to a resource. A decisionItemPrincipalResourceMembership object exposes the details of the type of membership that the principal has to the resource that's associated with the accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# decisionItemPrincipalResourceMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Each decision in an access review represents a principal's access to a resource. A **decisionItemPrincipalResourceMembership** object exposes the details of the type of membership that the principal has to the resource that's associated with the [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) object. For example, the principal can have direct or indirect access to the resource.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|membershipType| decisionItemPrincipalResourceMembershipType | Type of membership that the principal has to the resource. Multi-valued. The possible values are: `direct`, `indirect`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.decisionItemPrincipalResourceMembership",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.decisionItemPrincipalResourceMembership",
  "membershipType": "String",
}
```
