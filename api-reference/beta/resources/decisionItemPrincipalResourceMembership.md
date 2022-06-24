---
title: "decisionItemPrincipalResourceMembership resource type"
description: "Each decision in an access review represents a principal's access to a resource. A decisionItemPrincipalResourceMembership object exposes the details of the type of membership that the principal has to the resource that's associated with the accessReviewInstanceDecisionItem object."
author: "isabelleatmsft"
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
|membershipType|microsoft.graph.decisionItemPrincipalResourceMembershipType|Type of membership. Types include: direct and indirect.|

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
