---
title: "attributeRuleMembers resource type"
description: "Identifies a collection of users in the tenant who will be assigned the access package automatically based on the specified membership rules."
author: "fsheik"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# attributeRuleMembers resource type

Namespace: microsoft.graph



Identifies a collection of users in the tenant who will be assigned the access package automatically based on the specified membership rule.

Used in the **specificAllowedTargets** setting of an [access package assignment policy](accesspackageassignmentpolicy.md).
Inherits from [subjectSet](subjectset.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|A description of the membership rule.|
|membershipRule|String|Determines the allowed target users for this policy. For more information about the syntax of the membership rule, see [Membership Rules syntax](/azure/active-directory/enterprise-users/groups-dynamic-membership).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeRuleMembers"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeRuleMembers",
  "description": "String",
  "membershipRule": "String"
}
```
