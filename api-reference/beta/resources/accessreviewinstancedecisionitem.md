---
title: "accessReviewInstanceDecisionItem resource type"
description: "In the Azure AD access reviews feature, the `accessReviewInstanceDecisionItem` represents a decision on a user's access on an `accessReviewInstance`.  "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstanceDecisionItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD [access review](accessreviewsv2-root.md) decision on an instance of a review. This decision represents the determination of a user or service principal's access for a given access review.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewInstanceDecisionItems](../api/accessreviewinstancedecisionitem-list.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Lists every `accessReviewInstanceDecisionItem` for a specific `accessReviewInstance`. |
|[List accessReviewInstanceDecisionItems pending approval](../api/accessreviewinstancedecisionitem-listpendingapproval.md) | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection. | Get all `accessReviewInstanceDecisionItems` assigned to the calling user, for a specific `accessReviewInstance`. |
|[Update accessReviewInstanceDecisionItem](../api/accessreviewinstancedecisionitem-update.md) | None. | For any `accessReviewInstanceDecisionItems` that the calling user is assigned a reviewer on, calling user can record a decision by patching the decision object. |

## Properties
| Property                  | Type                                |  Description |
| :-------------------------| :---------------------------------- | :---------- |
| `id`                            |`String`                      | ID of the decision                                                                                     |
| `accessReviewId`                |`String`                      | ID of the accessReviewInstance parent                                                                                       |
| `reviewedBy`                    |`microsoft.graph.userIdentity`| Reviewer user ID                                                                                       |
| `reviewedDate`                  |`DateTimeOffset`              | DateTime when review occurred                                                                     |
| `decision`                      |`String`                      | Result of the review. Values can be: `Approve` `Deny` `NotReviewed` `DontKnow`.                                                                                   |
| `justification`                 |`String`                      | Review decision justification                                                                          |
| `appliedBy`                     |`microsoft.graph.userIdentity`| User ID of the user who applied the decision                                                           |
| `appliedDateTime`               |`DateTimeOffset`              | DateTime when approval decision was applied                                                           |
| `applyResult`                   |`String`                      | Result of applying the decision. Values are: `NotApplied` `Success` `Failed` `NotFound` `NotSupported`.                      |
| `recommendation`          |`String`                      | System-generated recommendation for the approval decision. Values are: `Approve` `Deny` `NotAvailable`. |
| `target`                       |`microsoft.graph.accessReviewInstanceDecisionItemTarget`                      | Target of this specific decision. Decision Targets can be of different types – each one with its own specific properties. See [accessReviewInstanceDecisionItemTarget](accessreviewinstancedecisionitemtarget.md). |

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `instance`               |[accessReviewInstance](accessreviewinstance.md)          | There is exactly one `accessReviewInstance` associated with each decision. The instance is the parent of the decision item, representing the recurrence of the access review the decision is made on. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewInstanceDecisionItem"
}-->

```json
{
 "id": "string (identifier)",
 "accessReviewId": "string",
 "reviewedBy": "microsoft.graph.userIdentity",
 "reviewedDate": "string (timestamp)",
 "decision": "string",
 "justification": "string",
 "appliedBy": "microsoft.graph.userIdentity",
 "appliedDateTime": "DateTimeOffset",
 "applyResult": "string",
 "recommendation": "string",
 "target":"microsoft.graph.accessReviewInstanceDecisionItemTarget"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewInstanceDecisionItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
