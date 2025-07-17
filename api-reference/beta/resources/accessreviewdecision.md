---
title: "accessReviewDecision resource type (deprecated)"
description: "The accessReviewDecision represents a Microsoft Entra access review decision of a particular entity's access."
ms.localizationpriority: medium
author: "shubhamguptacal"
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/22/2024
---

# accessReviewDecision resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer](../../includes/accessreviews-disclaimer.md)]

In the Microsoft Entra [access reviews](accessreviews-root.md) feature, the `accessReviewDecision` represents a Microsoft Entra access review decision of a particular entity's access. Within an access review, or an instance of a recurring access review, there's one `accessReviewDecision` per reviewed user. For example, if a group has two guests and one nonguest as members, and an access review of guests is performed for that group, then there are two access review decision objects. If a reviewer changes their decision, or another reviewer overrides them, then the `accessReviewDecision` is updated.


## Methods

None. Objects of this type are automatically created by the feature when an access review initializes, and can't be deleted. They can be retrieved from an access review using the [decisions](../api/accessreview-listdecisions.md) and [mydecisions](../api/accessreview-listmydecisions.md) relationships.

## Properties

This table illustrates the base properties of objects of this type. 

| Property                        | Type                         | Description                                                                                            |
| :------------------------------ | :-----------------------     | :----------------------------------------------------------------------------------------------------- |
| `id`                            |`String`                      | The ID of the decision within the access review.                                                                                    |
| `accessReviewId`                |`String`                      | The feature-generated ID of the access review.                                                                                      |
| `reviewedBy`                    |[userIdentity](useridentity.md)| The identity of the reviewer. If the recommendation was used as the review, the userPrincipalName is empty.                                                                                     |
| `reviewedDate`                  |`DateTimeOffset`              | The date and time the most recent review for this access right was supplied.                                                                        |
| `reviewResult`                  |`String`                      | The result of the review, one of `NotReviewed`, `Deny`, `DontKnow` or `Approve`.                                                                                   |
| `justification`                 |`String`                      | The reviewer's business justification, if supplied.                                                                        |
| `appliedBy`                     |[userIdentity](useridentity.md)| When the review completes, if the results were manually applied, the user identity of the user who applied the decision. If the review was autoapplied, the userPrincipalName is empty.                                                         |
| `appliedDateTime`               |`DateTimeOffset`              | The date and time when the review decision was applied.                                                         |
| `applyResult`                   |`String`                      | The outcome of applying the decision, one of: `NotApplied`, `Success`, `Failed`, `NotFound`, `NotSupported`.                     |
| `accessRecommendation`          |`String`                      | The feature- generated recommendation shown to the reviewer, one of: `Approve`, `Deny`, `NotAvailable`. |


In addition, more properties can be present depending on the object type of the object possessing the access that was decided upon. For example, if the access review decision is a particular user's group membership or application access, the user who is potentially going to have their access be removed is identified through these properties:

| Property                        | Type                         | Description                                                                                            |
| :------------------------------ | :-----------------------     | :----------------------------------------------------------------------------------------------------- |
| `userId`                            |`String`                      | The ID of user whose access was reviewed.                                                                                   |
| `userDisplayName`                            |`String`                      | The display name of the user whose access was reviewed.                                                                                    |
| `userPrincipalName`                            |`String`                      | The user principal name of the user whose access was reviewed.                                                                                    |



## Relationships

None. Objects of this type can be retrieved from an access review using the [decisions](../api/accessreview-listdecisions.md) and [mydecisions](../api/accessreview-listmydecisions.md) relationships of the [accessReview](accessreview.md) object.

## Related content

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[List accessReview decisions](../api/accessreview-listdecisions.md) |        [accessReviewDecision](accessreviewdecision.md) collection|    Get the decisions of an accessReview.|
|[List my accessReview decisions](../api/accessreview-listmydecisions.md) |        [accessReviewDecision](accessreviewdecision.md) collection|    As a reviewer, get my decisions of an accessReview.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewDecision"
}-->

```json
{
"id": "string (identifier)",
"accessReviewId": "string (identifier)",
"reviewedBy": "microsoft.graph.userIdentity",
"reviewedDate": "string (timestamp)",
"reviewResult": "string",
"justification": "string",
"appliedBy": "microsoft.graph.userIdentity",
"appliedDateTime": "string (timestamp)",
"applyResult": "string",
"accessRecommendation": "string",
"userId": "string",
"userDisplayName": "string",
"userPrincipalName": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewDecision resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
