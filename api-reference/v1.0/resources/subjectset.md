---
title: "subjectSet complex type"
description: "The abstract base type for types used in the request, approval, and assignment review settings of an access package assignment policy."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---
# subjectSet complex type

Namespace: microsoft.graph

A shared object that is used in entitlement management access package assignment policies and role management policies.

+ In entitlement management, used in the request, approval, and assignment review settings of an access package assignment policy.
+ In role management policies, used in the approval settings that are defined in rules for role management policies.

This is an abstract base type that's inherited by the following derived types:
+ [attributeRuleMembers](attributeRuleMembers.md)
+ [singleUser](singleuser.md)
+ [singleServicePrincipal](singleserviceprincipal.md)
+ [groupMembers](groupmembers.md)
+ [connectedOrganizationMembers](connectedorganizationmembers.md)
+ [requestorManager](requestormanager.md)
+ [internalSponsors](internalsponsors.md)
+ [externalSponsors](externalsponsors.md)
+ [targetManager](targetmanager.md)
+ [targetApplicationOwners](targetapplicationowners.md)


## Properties

None.
## Relationships
None.
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.subjectSet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.subjectSet"
}
```


