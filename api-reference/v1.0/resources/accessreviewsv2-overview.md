---
title: "Azure AD access reviews"
description: "Use Azure AD access reviews to configure one-time or recurring access reviews for attestation of a principal's access rights to Azure AD resources."
ms.localizationpriority: medium
author: "jyothig123"
ms.prod: "governance"
doc_type: conceptualPageType
---

# Azure AD access reviews

Namespace: microsoft.graph

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
|[List definitions](../api/accessreviewset-list-definitions.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Get a list of the [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) objects and their properties.|
|[Create definitions](../api/accessreviewset-post-definitions.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Create a new [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Read the properties and relationships of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Update the properties of an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md)|None|Deletes an [accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) object.|
|[filterByCurrentUser](../api/accessreviewscheduledefinition-filterbycurrentuser.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Returns all definitions where the calling user is the reviewer of any instances.|
|**Instances**| | |
|[List instances](../api/accessreviewscheduledefinition-list-instances.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties.|
|[Get accessReviewInstance](../api/accessreviewinstance-get.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[stop](../api/accessreviewinstance-stop.md)|None|Manually stop an accessReviewInstance.|
|[sendReminder](../api/accessreviewinstance-sendreminder.md)|None|Send a reminder to the reviewers of an accessReviewInstance.|
|[resetDecisions](../api/accessreviewinstance-resetdecisions.md)|None|Resets all decision items on an instance to `notReviewed`|
|[applyDecisions](../api/accessreviewinstance-applydecisions.md)|None|Manually apply decision on an accessReviewInstance.|
|[acceptRecommendations](../api/accessreviewinstance-acceptrecommendations.md)|None| Allows the calling user to accept the decision recommendation for each NotReviewed accessReviewInstanceDecisionItem that they are the reviewer on for a specific accessReviewInstance.|
|[batchRecordDecisions](../api/accessreviewinstance-batchrecorddecisions.md)|None|Review batches of principals or resources in one call.|
|[filterByCurrentUser](../api/accessreviewinstance-filterbycurrentuser.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Returns all instance objects on a definition for which the calling user is the reviewer.|
|**Instance decision items**| | |
|[List decisions](../api/accessreviewinstance-list-decisions.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects and their properties.|
|[Get accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-get.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Update the properties of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[accessReviewInstanceDecisionItem: filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Returns the decision items for which the calling user is the reviewer of.|
|**History definitions**| | |
|[List historyDefinitions](../api/accessreviewset-list-historydefinitions.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md) collection|Get a list of the [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) objects and their properties.|
|[Create historyDefinitions](../api/accessreviewset-post-historydefinitions.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Create a new [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[Get accessReviewHistoryDefinition](../api/accessreviewhistorydefinition-get.md)|[accessReviewHistoryDefinition](accessreviewhistorydefinition.md)|Read the properties and relationships of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.|
|[generateDownloadUri](../api/accessreviewhistoryinstance-generatedownloaduri.md)|[accessReviewHistoryInstance](accessreviewhistoryinstance.md)|Generate a URI for an instance that can be used to retrieve review history data.|
|[List instances](../api/accessreviewhistorydefinition-list-instances.md)|[accessReviewHistoryInstance](accessreviewhistoryinstance.md)|Retrieve a list of the [accessReviewHistoryInstance](accessreviewhistoryinstance.md) objects and their properties.|

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
