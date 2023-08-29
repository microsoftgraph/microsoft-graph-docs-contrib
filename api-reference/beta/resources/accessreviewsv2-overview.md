---
title: "Azure AD access reviews"
description: "You can use Azure AD access reviews to configure one-time or recurring access reviews for attestation of a principal's access rights. This documentation serves the 2nd version of the APIs."
ms.localizationpriority: medium
author: "jyothig123"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure Active Directory (Azure AD) access reviews

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Use Azure AD access reviews to configure one-time or recurring access reviews for attestation of a principal's right to access Azure AD resources. The principals are users or applications (service principals). The Azure AD resources include groups, applications (service principals), access packages, and privileged roles. Access reviews is a feature of Azure AD Identity Governance.

Typical customer scenarios for access reviews include:

- Customers can review and certify guest user access to groups through group memberships. Reviewers can use the insights that are provided to efficiently decide whether guests should have continued access.
- Customers can review and certify employee access to Azure AD resources.
- Customers can review and audit assignments to Azure AD privileged roles. This supports organizations in the management of privileged access.

The tenant where an access review is being created or managed via the API must have sufficient purchased or trial licenses. For more information about the license requirements, see [Access reviews license requirements](/azure/active-directory/governance/access-reviews-overview#license-requirements).

[!INCLUDE [GDPR-related-guidance](../../includes/gdpr-msgraph-export-note.md)]

## Methods

The following table lists the methods that you can use to interact with access review-related resources.

| Method		   | Return type	|Description|
|:---------------|:--------|:----------|
|**Schedule definitions**| | |
|[List definitions](../api/accessreviewset-list-definitions.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties. |
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Get an accessReviewScheduleDefinition object and its properties. |
|[Create definitions](../api/accessreviewset-post-definitions.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Create a new accessReviewScheduleDefinition. |
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md) | None. | Delete an accessReviewScheduleDefinition. |
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md) | None. | Update properties of an accessReviewScheduleDefinition with a specified identifier. |
|[filterByCurrentUser](../api/accessreviewscheduledefinition-filterbycurrentuser.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Retrieves all definitions for which the calling user is a reviewer on one or more instance.|
|**Instances**| | |
|[List instances](../api/accessreviewscheduledefinition-list-instances.md) | [accessReviewInstance](accessreviewinstance.md) collection | Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties. |
|[Get accessReviewInstance](../api/accessreviewinstance-get.md) | [accessReviewInstance](accessreviewinstance.md) | Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object. |
|[sendReminder](../api/accessreviewinstance-sendreminder.md) | None. | Send a reminder to the reviewers of an accessReviewInstance. |
|[stop](../api/accessreviewinstance-stop.md) | None. | Manually stop an accessReviewInstance. |
|[acceptRecommendations](../api/accessreviewinstance-acceptrecommendations.md) | None. | Allows the calling user to accept the decision recommendation for each NotReviewed accessReviewInstanceDecisionItem that they are the reviewer on for a specific accessReviewInstance. |
|[applyDecisions](../api/accessreviewinstance-applydecisions.md) | None. | Manually apply decisions on an accessReviewInstance. |
|[batchRecordDecisions](../api/accessreviewinstance-batchrecorddecisions.md)|None|Review batches of principals or resources in one call.|
|[resetDecisions](../api/accessreviewinstance-resetdecisions.md)|None|Resets all decision items on an instance to `notReviewed`.|
|[filterByCurrentUser](../api/accessreviewinstance-filterbycurrentuser.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Returns all instances on a given [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) for which the calling user is the reviewer of one or more decisions.|
|**Instance decision items**| | |
|[List decisions](../api/accessreviewinstance-list-decisions.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects and their properties.|
|[Get accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-get.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md) | None. | For any accessReviewInstanceDecisionItems that the calling user is assigned a reviewer on, calling user can record a decision by patching the decision object. |
|[filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Retrieves all [accessReviewInstanceDecisionItems](accessreviewinstancedecisionitem.md) objects where the calling use is the reviewer for a given [accessReviewInstance](accessreviewinstance.md).|
|[listPendingApproval](../api/accessreviewinstancedecisionitem-listpendingapproval.md) (deprecated) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection. | Get all accessReviewInstanceDecisionItems assigned to the calling user, for a specific accessReviewInstance. This method is being deprecated and replaced by [accessReviewInstanceDecisionItem: filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md). |
|**History definitions**| | |
|[List historyDefinitions](../api/accessreviewset-list-historydefinitions.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md) collection|Get a list of the [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) objects and their properties.|
|[Create historyDefinitions](../api/accessreviewset-post-historydefinitions.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Create a new [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[Get accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-get.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Read the properties and relationships of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[generateDownloadUri](../api/accessreviewhistoryinstance-generatedownloaduri.md)|[accessReviewHistoryInstance](accessreviewhistoryinstance.md)|Generate a URI for an instance that can be used to retrieve review history data.|
|[List instances](../api/accessreviewhistorydefinition-list-instances.md)|[accessReviewHistoryInstance](accessreviewhistoryinstance.md)|Retrieve a list of the [accessReviewHistoryInstance](accessreviewhistoryinstance.md) objects and their properties.|
|**Policy**| | |
|[Get accessReviewPolicy](../api/accessreviewpolicy-get.md)|[accessReviewPolicy](../resources/accessreviewpolicy.md)|Read the properties and relationships of an [accessReviewPolicy](../resources/accessreviewpolicy.md) object.|
|[Update accessReviewPolicy](../api/accessreviewpolicy-update.md)|[accessReviewPolicy](../resources/accessreviewpolicy.md)|Update the properties of an [accessReviewPolicy](../resources/accessreviewpolicy.md) object.|
|[List definitions pending approval](../api/accessreviewscheduledefinition-filterbycurrentuser.md) (deprecated)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Retrieves all definitions for which the calling user is a reviewer on one or more instance. This method is being deprecated and replaced by [accessReviewScheduleDefinition: filterByCurrentUser](../api/accessreviewscheduledefinition-filterbycurrentuser.md).|
|[List pendingAccessReviewInstances](../api/accessreviewinstance-pendingaccessreviewinstances.md) (deprecated) | [accessReviewInstance](accessreviewinstance.md) collection. | Get all pending accessReviewInstance resources assigned to the calling user. This method is being deprecated and replaced by [accessReviewInstance: filterByCurrentUser](../api/accessreviewinstance-filterbycurrentuser.md). |

## Role and application permission authorization checks

The following [Azure AD roles](/azure/active-directory/roles/permissions-reference) are required for a calling user to manage access reviews.

| Operation | Application permissions | Required directory role of the calling user |
|:------------------|:------------|:--------------------------------------------|
| Read | AccessReview.Read.All or AccessReview.ReadWrite.All | Global Administrator, Global Reader, Security Administrator, Security Reader or User Administrator |
| Create, Update or Delete | AccessReview.ReadWrite.All | Global Administrator or User Administrator |

In addition, a user who is an assigned reviewer of an access review can manage their decisions, without needing to be in a directory role.

## See also

- [Azure AD access reviews](/azure/active-directory/active-directory-azure-ad-controls-access-reviews-overview)
- [Tutorials](/graph/accessreviews-overview) to learn how to use the access reviews API to review access to Azure AD resources
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

