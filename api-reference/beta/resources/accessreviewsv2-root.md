---
title: "Azure AD access reviews"
description: "You can use Azure AD access reviews to configure one-time or recurring access reviews for attestation of user's access rights."
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: conceptualPageType
---

# Azure AD access reviews

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!NOTE]
>This documentation contains the latest supported version of access reviews APIs. For legacy documentation, see [access reviews legacy APIs](accessreviews-root.md).
>
>Currently, only access reviews of group membership is supported by the API.

You can use [Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview) to configure one-time or recurring access reviews for attestation of user's access rights.

Typical customer scenarios for access reviews of group memberships and application access are:

- Customers can review and certify guest user access by using access reviews of their access to applications and memberships of groups. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.

- Customers can review and certify employee access to applications and group memberships with access reviews.

- Customers can collect access review controls into programs that are relevant for your organization to track reviews for compliance or risk-sensitive applications.

There is also a related capability for customers to review and certify the role assignments of administrative users who are assigned to Azure AD roles such as Global Administrator or Azure subscription roles.  This capability is included in [Azure AD Privileged Identity Management](privilegedidentitymanagement-root.md).

Note that the access reviews feature, including the API, is included in Azure AD Premium P2.  The tenant where an access review is being created must have a valid purchased or trial Azure AD Premium P2 or EMS E5 subscription.
Prior to creating an access review, an administrator must have previously onboarded. The organization can onboard to Azure AD access reviews or, in the case of access reviews of Azure AD roles or Azure subscription roles, Azure AD PIM.


## Methods

The following table lists the methods that you can use to interact with access review-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|


## Role and application permission authorization checks

The following directory roles are required for a calling user to manage access reviews, programs, and controls.

| Target resource | Operation | Application permissions | Required directory role of the calling user |
|:----------------|:------------------|:------------|:--------------------------------------------|
|[accessReview](accessreview.md) of an Azure AD role | Read | AccessReview.Read.All or AccessReview.ReadWrite.All | Global Administrator, Security Administrator, Security Reader or Privileged Role Administrator |
|[accessReview](accessreview.md) of an Azure AD role | Create, Update or Delete | AccessReview.ReadWrite.All | Global Administrator or Privileged Role Administrator |
|[accessReview](accessreview.md) of a group or app | Read | AccessReview.Read.All, AccessReview.ReadWrite.Membership or AccessReview.ReadWrite.All | Global Administrator, Security Administrator, Security Reader or User Administrator |
|[accessReview](accessreview.md) of a group or app | Create, Update or Delete | AccessReview.ReadWrite.Membership or AccessReview.ReadWrite.All | Global Administrator or User Administrator |
| [program](program.md) and [programControl](programcontrol.md)| Read | ProgramControl.Read.All or ProgramControl.ReadWrite.All |  Global Administrator, Security Administrator, Security Reader or User Administrator |
| [program](program.md) and [programControl](programcontrol.md) | Create, Update or Delete | ProgramControl.ReadWrite.All | Global Administrator or User Administrator |

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [How an administrator can manage user access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)
- [How an administrator can manage programs and controls for Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-programs-controls)


<!--
{
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


