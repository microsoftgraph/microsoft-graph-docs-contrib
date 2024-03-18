---
title: "subjectSet complex type"
description: "A shared object that is used in entitlement management access package assignment policies, role management policies, and lifecycle workflows."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---
# subjectSet complex type

Namespace: microsoft.graph

A shared object that is used in entitlement management access package assignment policies, role management policies, and lifecycle workflows.

+ In entitlement management, used in the request, approval, and assignment review settings of an access package assignment policy.
+ In role management policies, used in the approval settings that are defined in rules for role management policies.
+ In lifecycle workflows, used to configure the users that are in the scope of a workflow.

This object is an abstract base type from which the following resources are derived:
+ [attributeRuleMembers](attributeRuleMembers.md)
+ [connectedOrganizationMembers](connectedorganizationmembers.md)
+ [externalSponsors](externalsponsors.md)
+ [groupMembers](groupmembers.md)
+ [internalSponsors](internalsponsors.md)
+ [requestorManager](requestormanager.md)
+ [ruleBasedSubjectSet](../resources/identitygovernance-ruleBasedSubjectSet.md)
+ [singleUser](singleuser.md)
+ [singleServicePrincipal](singleserviceprincipal.md)
+ [targetManager](targetmanager.md)
+ [targetApplicationOwners](targetapplicationowners.md)
+ [targetUserSponsors](targetusersponsors.md)


## Properties

None.
## Relationships
None.
## JSON representation
The following JSON representation shows the resource type.
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


