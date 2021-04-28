---
title: "Azure AD access reviews"
description: "You can use Azure AD access reviews to configure one-time or recurring access reviews for attestation of user's access rights."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure AD access reviews

Namespace: microsoft.graph


You can use [Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) to configure one-time or recurring access reviews for attestation of user's access rights.

Typical customer scenarios for access reviews of group memberships and application access are:

- Customers can review and certify guest user access by using access reviews of their access to applications and memberships of groups. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.

- Customers can review and certify employee access to applications and group memberships with access reviews.

- Customers can collect access review controls into programs that are relevant for your organization to track reviews for compliance or risk-sensitive applications.

There is also a related capability for customers to review and certify the role assignments of administrative users who are assigned to Azure AD roles such as Global Administrator or Azure subscription roles.  This capability is included in [Azure AD Privileged Identity Management](privilegedidentitymanagement-root.md).

Note that the access reviews feature, including the API, is included in Azure AD Premium P2.  The tenant where an access review is being created must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.


## Methods

The following table lists the methods that you can use to interact with access review-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
**to do: fill in or delete**

## Role and application permission authorization checks

The following directory roles are required for a calling user to manage access reviews. 

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | AccessReview.Read.All or AccessReview.ReadWrite.All | Global Administrator, Global Reader, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | AccessReview.ReadWrite.All | Global Administrator or User Administrator |

**to do add policy.readwrite.all permission??**

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [How an administrator can manage user access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)


