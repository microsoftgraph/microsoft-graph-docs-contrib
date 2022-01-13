---
title: "decisionItemPrincipalResourceMembership resource type"
description: "Every decision item in an access review represents a principal's access to a resource. decisionItemPrincipalResourceMembership represents the resource associated with the decision item."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# decisionItemPrincipalResourceMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Every decision item in an access review represents a principal's membership's to a resource. This property represents details of the membership. Examples of this detail might be whether the principal has direct access or indirect access. To start with, this type has one property : membershipType which indicates the types of membership the principal has to the resource. Types of these memberships includes direct and indirect. In the future, it may include details like when this membership(link) was created, etc.


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
