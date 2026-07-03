---
title: "decisionItemPrincipalResourceMembership resource type"
description: "Represents details of the type of membership that a principal has to the resource associated with an accessReviewInstanceDecisionItem object."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# decisionItemPrincipalResourceMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

In an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md), the **principalResourceMembership** property provides details about the type of membership that a principal has to the associated resource. For example, the principal can have direct or indirect access to the resource.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|membershipType| decisionItemPrincipalResourceMembershipType | Type of membership that the principal has to the resource. Multi-valued. The possible values are: `direct`, `indirect`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.decisionItemPrincipalResourceMembership",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.decisionItemPrincipalResourceMembership",
  "membershipType": "String"
}
```
