---
title: "accessReviewInstanceDecisionItem resource type"
description: "Represents a decision on a user's access on an accessReviewInstance."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.keywords: [ access review decisions ]
ms.date: 07/22/2024
---

# accessReviewInstanceDecisionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents a Microsoft Entra [access review](accessreviewsv2-overview.md) decision on an instance of a review. This decision represents the determination of a user or service principal's access for a given [access review instance](accessreviewinstance.md). This resource is an open type that allows other properties to be passed in.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List instance decisions](../api/accessreviewinstance-list-decisions.md) (from an access review instance) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects and their properties.|
|[List stage decisions](../api/accessreviewstage-list-decisions.md) (from a stage of an access review instance)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects for a stage of an access review instance.|
|[Get](../api/accessreviewinstancedecisionitem-get.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[Update](../api/accessreviewinstancedecisionitem-update.md) | None. | For any accessReviewInstanceDecisionItems that the calling user is assigned a reviewer on, calling user can record a decision by patching the decision object. |
|[Filter by current user](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Retrieves all [accessReviewInstanceDecisionItems](accessreviewinstancedecisionitem.md) objects where the calling use is the reviewer for a given [accessReviewInstance](accessreviewinstance.md).|
|[List pending approval (deprecated)](../api/accessreviewinstancedecisionitem-listpendingapproval.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection. | Get all accessReviewInstanceDecisionItems assigned to the calling user, for a specific accessReviewInstance. This method is deprecated and replaced by [filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md). |

## Properties
| Property | Type |  Description |
| :---------------| :---- | :---------- |
|accessReviewId|String|The identifier of the accessReviewInstance parent. Supports `$select`. Read-only.|
|appliedBy|[userIdentity](../resources/useridentity.md)|The identifier of the user who applied the decision. `00000000-0000-0000-0000-000000000000` if the assigned reviewer hasn't applied the decision or it was automatically applied. Read-only.|
|appliedDateTime|DateTimeOffset|The timestamp when the approval decision was applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$select`. Read-only.|
|applyResult|String|The result of applying the decision. Possible values: `New`, `AppliedSuccessfully`, `AppliedWithUnknownFailure`, `AppliedSuccessfullyButObjectNotFound`, and `ApplyNotSupported`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only.|
|decision|String|Result of the review. Possible values: `Approve`, `Deny`, `NotReviewed`, or `DontKnow`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). |
|id|String| The identifier of the decision. Inherited from [entity](../resources/entity.md). Supports `$select`. Read-only.|
|justification|String|Justification left by the reviewer when they made the decision.|
| target | [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md)  | The target of this specific decision. Decision targets can be of different types – each one with its own specific properties. See [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md). Read-only. <br/> This property is replaced by the `principal` and `resource` properties in v1.0.|
|principal|[identity](../resources/identity.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is "Bob" and the resource is "Sales". Principals can be of two types - userIdentity and servicePrincipalIdentity. Supports `$select`. Read-only.|
|principalLink|String|Link to the principal object. For example: `https://graph.microsoft.com/v1.0/users/a6c7aecb-cbfd-4763-87ef-e91b4bd509d9`. Read-only.|
|recommendation|String|A system-generated recommendation for the approval decision based off last interactive sign-in to tenant. Recommend approve if sign-in is within 30 days of start of review. Recommend deny if sign-in is greater than 30 days of start of review. Recommendation not available otherwise. Possible values: `Approve`, `Deny`, or `NoInfoAvailable`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only.|
|resource|[accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is Bob and the resource is "Sales". Resources can be of multiple types. See [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md). Read-only.|
|resourceLink|String|A link to the resource. For example, `https://graph.microsoft.com/v1.0/servicePrincipals/c86300f3-8695-4320-9f6e-32a2555f5ff8`. Supports `$select`. Read-only.|
|reviewedBy|[userIdentity](../resources/useridentity.md)| The identifier of the reviewer. `00000000-0000-0000-0000-000000000000` if the assigned reviewer hasn't reviewed. Supports `$select`. Read-only.|
|reviewedDateTime|DateTimeOffset| The timestamp when the review decision occurred. Supports `$select`. Read-only.|
|principalResourceMembership|[decisionItemPrincipalResourceMembership](../resources/decisionItemPrincipalResourceMembership.md)| Every decision item in an access review represents a principal's membership to a resource. This property provides the details of the membership. For example, whether the principal has direct access or indirect access to the resource. Supports `$select`. Read-only.|


## Relationships

| Relationship | Type    |Description|
|:---------------|:--------|:----------|
| instance |[accessReviewInstance](accessreviewinstance.md) | There's exactly one accessReviewInstance associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on. |
| insights |[governanceInsight](governanceinsight.md) collection | Insights are recommendations to reviewers on whether to approve or deny a decision. There can be multiple insights associated with an **accessReviewInstanceDecisionItem**. |


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem",
  "openType": true
}
-->

```json
{
  "@odata.type": "#microsoft.graph.accessReviewInstanceDecisionItem",
  "id": "String (identifier)",
  "accessReviewId": "String",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "reviewedDateTime": "String (timestamp)",
  "decision": "String",
  "justification": "String",
  "appliedBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
  "appliedDateTime": "String (timestamp)",
  "applyResult": "String",
  "recommendation": "String",
  "target": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemTarget"
  },
  "principal": {
    "@odata.type": "microsoft.graph.identity"
  },
  "principalLink": "String",
  "resource": {
    "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItemResource"
  },
  "principalResourceMembership": {
    "@odata.type": "microsoft.graph.decisionItemPrincipalResourceMembership"
  },
  "resourceLink": "String"
}
```
