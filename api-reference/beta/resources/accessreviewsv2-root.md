---
title: "Azure AD access reviews - V2"
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
>Currently, the API only supports access reviews of group membership.

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
|[List accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-list.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstance` instances in listings. |
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Get an `accessReviewScheduleDefinition` with a specified id. |
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-create.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Create a new `accessReviewScheduleDefinition`. |
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md) | None. | Delete an `accessReviewScheduleDefinition` with a specified ID. |
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md) | None. | Update properties of an `accessReviewScheduleDefinition` with a specified ID. |
|[List accessReviewInstance](../api/accessreviewinstance-list.md) | [accessReviewInstance](accessreviewinstance.md) collection | Lists every `accessReviewInstance` for a specific `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstanceDecisionItem`s in listings. |
|[Get accessReviewInstance](../api/accessreviewinstance-get.md) | [accessReviewInstance](accessreviewinstance.md) | Returns `accessReviewInstance` for an `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstanceDecisionItem`s in object. |
|[Send accessReviewInstance reminder](../api/accessreviewinstance-sendreminder.md) | None. | Send a reminder to the reviewers of an `accessReviewInstance`. |
|[Stop accessReviewInstance](../api/accessreviewinstance-stop.md) | None. | Manually stop an `accessReviewInstance`. |
|[Apply decisions](../api/accessreviewinstance-applydecisions.md) | None. | Manually apply decision on an `accessReviewInstance`. |
|[List accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-list.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Lists every `accessReviewInstanceDecisionItem` for a specific `accessReviewInstance`. |

## Role and application permission authorization checks

The following directory roles are required for a calling user to manage access reviews. Note that only access reviews on groups are supported currently.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | AccessReview.Read.All or AccessReview.ReadWrite.All | Global Administrator, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | AccessReview.ReadWrite.All | Global Administrator or User Administrator |

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [How an administrator can manage user access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-user-access-with-access-reviews)
- [How an administrator can manage guest access with Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-manage-guest-access-with-access-reviews)


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


