---
title: "accessPackageAssignmentPolicy resource type"
description: "An access package assignment policy specifies the policy by which subjects may request or be assigned an access package via an access package assignment."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageAssignmentPolicy resource type

Namespace: microsoft.graph

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment policy specifies the policy by which subjects can request or be assigned an access package via an access package assignment. An access package can have zero or more policies. When a request from a subject is received, the subject is matched against each policy to find the policy (if any) with requestorSettings that include that subject. The policy then determines whether the request requires approval, the duration of the access package assignment, and whether the assignment needs regular reviews.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/entitlementmanagement-post-assignmentrequests.md) which references the access package and access package assignment policy.

