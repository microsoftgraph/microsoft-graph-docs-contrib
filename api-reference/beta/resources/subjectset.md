---
title: "subjectSet resource type"
description: "A shared object that is used in entitlement management access package assignment policies, role management policies, and lifecycle workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/06/2024
---

# subjectSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A shared object that is used in entitlement management access package assignment policies, role management policies, and lifecycle workflows.

+ In entitlement management, used in the request, approval, and assignment review settings of an access package assignment policy.
+ In role management policies, used in the approval settings that are defined in rules for role management policies.
+ In lifecycle workflows, used to configure the users that are in the scope of a workflow.

This object is an abstract base type from which the following resources are derived:

| Resource | Feature | Description |
|---|---|---|
|[connectedOrganizationMembers](connectedorganizationmembers.md) | Entitlement Management | Represents members of a connected organization in an access package assignment policy. |
|[externalSponsors](externalsponsors.md) | Entitlement Management | Represents user's connected organization external sponsors for access package assignments. |
|[groupBasedSubjectSet](../resources/identitygovernance-groupbasedsubjectset.md) | Lifecycle Workflows | Represents the group that is the scope of a lifecycle workflow. |
|[groupMembers](groupmembers.md) | Entitlement Management | Represents a collection of users part of a group in the tenant who are allowed as requestor, approver, or reviewer. |
|[internalSponsors](internalsponsors.md) | Entitlement Management | Represents user's connected organization internal sponsors as the approver for access package assignments. |
|[requestorManager](requestormanager.md) | Entitlement Management | Represents the manager of the requestor as approver for access package assignments. |
|[ruleBasedSubjectSet](../resources/identitygovernance-ruleBasedSubjectSet.md) | Lifecycle Workflows | Represents the rules to define the subjects for the scope of a lifecycle workflow. |
|[singleUser](singleuser.md) | Entitlement Management | Represents a single user as approver to access packages. |

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
