---
title: "accessReviewInstance resource type"
description: "Represents a recurrence of an `accessReviewScheduleDefinition`."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents an Azure AD [access review](accessreviewsv2-root.md) recurrence. If the parent [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique group being reviewed in the schedule definition. If a schedule definition reviews multiple groups, each group will have a unique instance for each recurrence.

Every **accessReviewInstance** contains a list of [decisions](accessreviewinstancedecisionitem.md) that reviewers can take action on. There is one decision per identity being reviewed.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List accessReviewInstances](../api/accessreviewinstance-list.md) | [accessReviewInstance](accessreviewinstance.md) collection | Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties. |
|[Get accessReviewInstance](../api/accessreviewinstance-get.md) | [accessReviewInstance](accessreviewinstance.md) | Returns accessReviewInstance for an accessReviewScheduleDefinition. Does not include associated accessReviewInstanceDecisionItem`s in the object. |
|[List pendingAccessReviewInstances](../api/accessreviewinstance-pendingaccessreviewinstances.md) | [accessReviewInstance](accessreviewinstance.md) collection. | Get all pending accessReviewInstance resources assigned to the calling user. |
|[Send accessReviewInstance reminder](../api/accessreviewinstance-sendreminder.md) | None. | Send a reminder to the reviewers of an accessReviewInstance. |
|[Stop accessReviewInstance](../api/accessreviewinstance-stop.md) | None. | Manually stop an accessReviewInstance. |
|[Accept recommendations](../api/accessreviewinstance-acceptrecommendations.md) | None. | Allows the calling user to accept the decision recommendation for each NotReviewed accessReviewInstanceDecisionItem that they are the reviewer on for a specific accessReviewInstance. |
|[Apply decisions](../api/accessreviewinstance-applydecisions.md) | None. | Manually apply decision on an accessReviewInstance. |
|[Batch record decisions](../api/accessreviewinstance-batchrecorddecisions.md)|None|Review batches of principals or resources in one call.|

|[List accessReviewInstances](../api/accessreviewinstance-list.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties.|
|[Create accessReviewInstance](../api/accessreviewinstance-create.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Create a new [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Get accessReviewInstance](../api/accessreviewinstance-get.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Update accessReviewInstance](../api/accessreviewinstance-update.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Update the properties of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Delete accessReviewInstance](../api/accessreviewinstance-delete.md)|None|Deletes an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[stop](../api/accessreviewinstance-stop.md)|None|**TODO: Add Description**|
|[sendReminder](../api/accessreviewinstance-sendreminder.md)|None|**TODO: Add Description**|
|[resetDecisions](../api/accessreviewinstance-resetdecisions.md)|None|**TODO: Add Description**|
|[applyDecisions](../api/accessreviewinstance-applydecisions.md)|None|**TODO: Add Description**|
|[acceptRecommendations](../api/accessreviewinstance-acceptrecommendations.md)|None|**TODO: Add Description**|
|[batchRecordDecisions](../api/accessreviewinstance-batchrecorddecisions.md)|None|**TODO: Add Description**|
|[filterByCurrentUser](../api/accessreviewinstance-filterbycurrentuser.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|**TODO: Add Description**|
|[List decisions](../api/accessreviewinstance-list-decisions.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get the accessReviewInstanceDecisionItem resources from the decisions navigation property.|
|[Create accessReviewInstanceDecisionItem](../api/accessreviewinstance-post-decisions.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md)|Create a new accessReviewInstanceDecisionItem object.|
|[List accessReviewScheduleDefinition](../api/accessreviewinstance-list-definition.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Get the accessReviewScheduleDefinition resources from the definition navigation property.|
|[Add accessReviewScheduleDefinition](../api/accessreviewinstance-post-definition.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md)|Add definition by posting to the definition collection.|

## Properties
| Property | Type | Description |
| :-------------------------| :---------------------------------- | :---------- |
| id | String | Unique identifier of the instance. |
| displayName | String | Name of the parent [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). |
| startDateTime | DateTimeOffset | DateTime when review instance is scheduled to start. May be in the future. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| endDateTime | DateTimeOffset | DateTime when review instance is scheduled to end.The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| status | String | Specifies the status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`.  Read-only.|
| scope | [accessReviewScope](accessreviewscope.md) | Created based on **scope** and **instanceEnumerationScope** at the `accessReviewScheduleDefinition` level. Defines the scope of users reviewed in a group. In the case of a single-group review, the scope defined at the `accessReviewScheduleDefinition` level applies to all instances. In the case of all groups review, scope may be different for each group. Read-only.  | 
| decisions | [accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection | Each user reviewed in an [accessReviewInstance](#accessreviewinstance-resource-type) has a decision item representing if their access was approved, denied, or not yet reviewed. |
| definition |[accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | There is exactly one **accessReviewScheduleDefinition** associated with each instance. It is the parent schedule for the instance, where instances are created for each recurrence of a review definition and each group selected to review by the definition. |

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
  "@odata.type": "microsoft.graph.accessReviewInstance",
  "openType": false
}
-->

```json
{
 "@odata.type": "#microsoft.graph.accessReviewInstance",
 "id": "string (identifier)",
 "displayName": "string",
 "startDateTime": "string (timestamp)",
 "endDateTime": "string (timestamp)",
 "status": "string",
 "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  }
}
```

<!--
{
  "type": "#page.annotation",
  "description": "accessReviewInstance resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
