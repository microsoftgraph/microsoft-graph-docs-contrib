---
title: "accessReviewInstanceDecisionItem resource type"
description: "Represents a decision on a user's access on an accessReviewInstance."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

>[!NOTE]
>The property `target` will be deprecated in v1.0 and replaced by properties `principal` and `resource`.

Represents an Azure AD [access review](accessreviewsv2-root.md) decision on an instance of a review. This decision represents the determination of a user or service principal's access for a given [access review instance](accessreviewinstance.md).

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List accessReviewInstanceDecisionItems](../api/accessreviewinstancedecisionitem-list.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Get a list of the [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) objects and their properties.|
|[Get accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-get.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Read the properties and relationships of an [accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) object.|
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md) | None. | For any accessReviewInstanceDecisionItems that the calling user is assigned a reviewer on, calling user can record a decision by patching the decision object. |
|[filterByCurrentUser](../api/accessreviewinstancedecisionitem-filterbycurrentuser.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Retrieves all [accessReviewInstanceDecisionItems](accessreviewinstancedecisionitem.md) objects where the calling use is the reviewer for a given [accessReviewInstance](accessreviewinstance.md).|

## Properties
| Property | Type |  Description |
| :---------------| :---- | :---------- |
| id | String | The identifier of the decision. |
| accessReviewId | String | The identifier of the accessReviewInstance parent. Read-only. |
| reviewedBy | [userIdentity](useridentity.md) | The identifier of the reviewer. Read-only. |
| reviewedDateTime | DateTimeOffset | The timestamp when the review occurred. Read-only.|
| decision | String | Result of the review. Possible values: `Approve`, `Deny`, `NotReviewed`, or `DontKnow`. |
| justification | String | The review decision justification. |
| appliedBy | [userIdentity](useridentity.md) | The identifier of the user who applied the decision. Read-only. |
| appliedDateTime | DateTimeOffset | The timestamp when the approval decision was applied. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
| applyResult | String | The result of applying the decision. Possible values: `New`, `AppliedSuccessfully`, `AppliedWithUnknownFailure`, `AppliedSuccessfullyButObjectNotFound` and `ApplyNotSupported`. Read-only.|
| recommendation | String | A system-generated recommendation for the approval decision. Recommend approve if sign-in is within thirty days of start of review. Recommend deny if sign-in is greater than thirty days of start of review. Recommendation not available otherwise.  Possible values: `Approve`, `Deny`, or `NoInfoAvailable`. Read-only. |
| target | [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md)  | The target of this specific decision. Decision targets can be of different types – each one with its own specific properties. See [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md). Read-only.|
|principal|[identity](../resources/identity.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the principal. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is "Bob" and the resource is "Sales". Principals can be of two types - userIdentity and servicePrincipalIdentity. Read-only.|
|principalLink|String|Link to the principal object. Example: "https://graph.microsoft.com/v1.0/users/a6c7aecb-cbfd-4763-87ef-e91b4bd509d9". Read-only.|
|resource|[accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md)|Every decision item in an access review represents a principal's access to a resource. This property represents details of the resource. For example, if a decision item represents access of User "Bob" to Group "Sales" - The principal is Bob and the resource is "Sales". Resources can be of multiple types. See [accessReviewInstanceDecisionItemResource](../resources/accessreviewinstancedecisionitemresource.md). Read-only.|
|resourceLink|String|Link to the resource. Ex: "https://graph.microsoft.com/v1.0/servicePrincipals/c86300f3-8695-4320-9f6e-32a2555f5ff8". Read-only.|

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| instance |[accessReviewInstance](accessreviewinstance.md) | There is exactly one accessReviewInstance associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on. |


## JSON representation

Here is a JSON representation of the resource.

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
  "resourceLink": "String"
}
```

