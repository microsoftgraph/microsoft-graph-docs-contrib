---
title: "accessReviewInstance resource type"
description: "In the Azure AD access reviews feature, the `accessReviewInstance` represents a recurrence of an `accessReviewScheduleDefinition`.  "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD [access review](accessreviewsv2-root.md) recurrence. If the parent **accessReviewScheduleDefinition** is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique group being reviewed in the schedule definition. If a schedule definition reviews multiple groups, each group will have a unique instance for each recurrence.

Every **accessReviewInstance** contains a list of [decisions](accessreviewinstancedecisionitem.md) that reviewers can take action on. There is one decision per identity being reviewed.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewInstance](../api/accessreviewinstance-list.md) | [accessReviewInstance](accessreviewinstance.md) collection | Lists every `accessReviewInstance` for a specific `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstanceDecisionItem`s in listings. |
|[Get accessReviewInstance](../api/accessreviewinstance-get.md) | [accessReviewInstance](accessreviewinstance.md) | Returns `accessReviewInstance` for an `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstanceDecisionItem`s in object. |
|[List accessReviewInstances pending approval](../api/accessreviewinstance-listpendingapproval.md) | [accessReviewInstance](accessreviewinstance.md) collection. | Get all `accessReviewInstances` assigned to the calling user. |
|[Send accessReviewInstance reminder](../api/accessreviewinstance-sendreminder.md) | None. | Send a reminder to the reviewers of an `accessReviewInstance`. |
|[Stop accessReviewInstance](../api/accessreviewinstance-stop.md) | None. | Manually stop an `accessReviewInstance`. |
|[Accept recommendations](../api/accessreviewinstance-acceptrecommendations.md) | None. | Allows the calling user to accept the decision recommendation for each NotReviewed `accessReviewInstanceDecisionItem` that they are the reviewer on for a specific `accessReviewInstance`. |
|[Apply decisions](../api/accessreviewinstance-applydecisions.md) | None. | Manually apply decision on an `accessReviewInstance`. |



## Properties
| Property                  | Type                                |  Description |
| :-------------------------| :---------------------------------- | :---------- |
| `id`                      |`String`                                                         | Unique identifier of the instance |
| `displayName`             |`String`                                                         | Name of the parent `accessReviewScheduleDefinition` |
| `startDateTime`           |`DateTimeOffset`                                                 | DateTime when review instance is scheduled to start. May be in the future. |
| `endDateTime`             |`DateTimeOffset`                                                 | DateTime when review instance is scheduled to end. |
| `status`                  |`string`                                                          | Read-only. Field specifies the status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`. |
| `scope`                   |`microsoft.graph.accessReviewScope`                              | Read-only. Created based on `scope` and `instanceEnumerationScope` at the `accessReviewScheduleDefinition` level. Defines scope of users reviewed in a group. In the case of a single-group review, the scope defined at the `accessReviewScheduleDefinition` level applies to all instances. In the case of all groups review, scope may be different for each group. | 
| `decisions`               |`Collection(microsoft.graph.accessReviewInstanceDecisionItem)`  | Set of decisions for this review instance. |
| `definition`              |`microsoft.graph.accessReviewScheduleDefinition`                | Back link to the `accessReviewScheduleDefinition` associated with the instance. |



## Relationships




| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `definition`               |[accessReviewScheduleDefinition](accessreviewscheduledefinition.md)          | There is exactly one `accessReviewScheduleDefinition` associated with each instance. It is the parent schedule for the instance, where instances are created for each recurrence of a review definition and each group selected to review by the definition. |
| `decisions`               |[accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection        | Each user reviewed in an `accessReviewInstance` has a decision item representing if they were approved, denied, or not yet reviewed. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewInstance"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string",
 "startDateTime": "string (timestamp)",
 "endDateTime": "string (timestamp)",
 "status": "string",
 "scope": "microsoft.graph.accessReviewScope",
 "decisions": "Collection(microsoft.graph.accessReviewInstanceDecisionItem)",
 "definition":"microsoft.graph.accessReviewScheduleDefinition"
}
```
## user

**user** is an entity type representing a reviewer, that exposes the reviewer's pending access review instances to that reviewer. The reviewer can also submit decisions via the API.

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `pendingAccessReviewInstances`|`Collection(microsoft.graph.accessReviewInstance)`                | Navigation property to get list of access reviews pending approval by reviewer.     

<!--
{
  "type": "#page.annotation",
  "description": "accessReview resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
