---
title: "accessReviewInstance resource type"
description: "Represents a recurrence of an `accessReviewScheduleDefinition`."
author: "jyothig123"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/10/2024
---

# accessReviewInstance resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [accessreviews-disclaimer-v2](../../includes/accessreviews-disclaimer-v2.md)]

Represents a Microsoft Entra [access review](accessreviewsv2-overview.md) recurrence. If the parent [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) is a recurring access review, instances represent each recurrence. A review that doesn't recur will have exactly one instance. Instances also represent each unique group being reviewed in the schedule definition. If a schedule definition reviews multiple groups, each group has a unique instance for each recurrence.

Every **accessReviewInstance** contains a list of [decisions](accessreviewinstancedecisionitem.md) that reviewers can take action on. There's one decision per identity being reviewed.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[List](../api/accessreviewscheduledefinition-list-instances.md) | [accessReviewInstance](accessreviewinstance.md) collection | Get a list of the [accessReviewInstance](../resources/accessreviewinstance.md) objects and their properties. |
|[Get](../api/accessreviewinstance-get.md) | [accessReviewInstance](accessreviewinstance.md) | Read the properties and relationships of an [accessReviewInstance](../resources/accessreviewinstance.md) object. |
|[Update](../api/accessreviewinstance-update.md)|[accessReviewInstance](../resources/accessreviewinstance.md)|Update the reviewers of an [accessReviewInstance](../resources/accessreviewinstance.md) object.|
|[Filter by current user](../api/accessreviewinstance-filterbycurrentuser.md)|[accessReviewInstance](../resources/accessreviewinstance.md) collection|Returns all instances on a given [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) for which the calling user is the reviewer of one or more decisions.|
|[List contacted reviewers](../api/accessreviewinstance-list-contactedreviewers.md)|[accessReviewReviewer](../resources/accessreviewreviewer.md) collection|Get the reviewers who received notifications for an access review instance.|
|[Send reminder](../api/accessreviewinstance-sendreminder.md) | None. | Send a reminder to the reviewers of an accessReviewInstance. |
|[Stop](../api/accessreviewinstance-stop.md) | None. | Manually stop an accessReviewInstance. |
|[Accept recommendations](../api/accessreviewinstance-acceptrecommendations.md) | None. | Allows the calling user to accept the decision recommendation for each NotReviewed accessReviewInstanceDecisionItem that they're the reviewer on for a specific accessReviewInstance. |
|[Apply decisions](../api/accessreviewinstance-applydecisions.md) | None. | Manually apply decisions on an accessReviewInstance. |
|[Stop apply decisions](../api/accessreviewinstance-stopapplydecisions.md) | None. |Allows the calling user to stop the apply decision action on a specific accessReviewInstance. |
|[Batch record decisions](../api/accessreviewinstance-batchrecorddecisions.md)|None|Review batches of principals or resources in one call.|
|[Reset decisions](../api/accessreviewinstance-resetdecisions.md)|None|Resets all decision items on an instance to `notReviewed`.|
|[List stages](../api/accessreviewinstance-list-stages.md)|[accessReviewStage](../resources/accessreviewstage.md) collection| Retrieve the stages in a multi-stage access review instance.|
|[List decisions](../api/accessreviewinstance-list-decisions.md)|[accessReviewInstanceDecisionItem](../resources/accessreviewinstancedecisionitem.md) collection|Get the accessReviewInstanceDecisionItem resources from the decisions navigation property.|
|[List pending access review instances (deprecated)](../api/accessreviewinstance-pendingaccessreviewinstances.md) | [accessReviewInstance](accessreviewinstance.md) collection. | Get all pending accessReviewInstance resources assigned to the calling user. This method is being deprecated and replaced by [filterByCurrentUser](../api/accessreviewinstance-filterbycurrentuser.md). |

## Properties
| Property | Type | Description |
| :-------------------------| :---------------------------------- | :---------- |
| endDateTime | DateTimeOffset | DateTime when review instance is scheduled to end. The DatetimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$select`. Read-only.|
| errors | [accessReviewError](accessreviewerror.md) collection| Collection of errors in an access review instance lifecycle. Read-only. |
| fallbackReviewers   |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers are notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner doesn't exist, or manager is specified as reviewer but a user's manager doesn't exist. Supports `$select`.|
| id | String | Unique identifier of the instance. Supports `$select`. Read-only.|
| scope | [accessReviewScope](accessreviewscope.md) | Created based on **scope** and **instanceEnumerationScope** at the accessReviewScheduleDefinition level. Defines the scope of users reviewed in a group. Supports `$select` and `$filter` (`contains` only). Read-only. |
| startDateTime | DateTimeOffset | DateTime when review instance is scheduled to start. May be in the future. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$select`. Read-only. |
| status | String | Specifies the status of an accessReview. Possible values: `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`. Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only.|
| reviewers   |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of access review scopes is used to define who the reviewers are. Supports `$select`. For examples of options for assigning reviewers, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept).|


## Relationships

| Relationship | Type    |Description|
|:---------------|:--------|:----------|
| contactedReviewers   |[accessReviewReviewer](../resources/accessreviewreviewer.md) collection| Returns the collection of reviewers who were contacted to complete this review. While the **reviewers** and **fallbackReviewers** properties of the **accessReviewScheduleDefinition** might specify group owners or managers as **reviewers**, **contactedReviewers** returns their individual identities. Supports `$select`. Read-only. |
| definition               |[accessReviewScheduleDefinition](accessreviewscheduledefinition.md)          | There's exactly one **accessReviewScheduleDefinition** associated with each instance. It's the parent schedule for the instance, where instances are created for each recurrence of a review definition and each group selected to review by the definition. |
| stages|[accessReviewStage](accessreviewstage.md) collection| If the instance has multiple stages, this returns the collection of stages. A new stage will only be created when the previous stage ends. The existence, number, and settings of stages on a review instance are created based on the [accessReviewStageSettings](accessreviewstagesettings.md) on the parent [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). |
| decisions               |[accessReviewInstanceDecisionItem](accessreviewinstancedecisionitem.md) collection        | Each user reviewed in an **accessReviewInstance** has a decision item representing if they were approved, denied, or not yet reviewed. |

## JSON representation

The following JSON representation shows the resource type.

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
 "startDateTime": "string (timestamp)",
 "endDateTime": "string (timestamp)",
 "status": "string",
 "scope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "reviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "fallbackReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewerScope"
    }
  ],
  "contactedReviewers": [
    {
      "@odata.type": "microsoft.graph.accessReviewReviewer"
    }
  ]
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
