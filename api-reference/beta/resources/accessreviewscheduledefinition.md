---
title: "accessReviewScheduleDefinition resource type"
description: "In the Azure AD access reviews feature, the `accessReviewScheduleDefinition` represents an access review or access review series.  "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewScheduleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD [access review](accessreviews-root.md).  


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-list.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every accessReviewScheduleDefinition. |

## Properties
| Property                  | Type                                | Required on Create                     | Description |
| :-------------------------| :---------------------------------- | :---------- | :---------- |
| `id`                      |`String`                             | No  | The feature-assigned unique identifier of an access review.|
| `displayName`             |`String`                             | Yes | Name of access review series.|
| `createdDateTime`         |`DateTimeOffset`                     | Yes | DateTime when review series was created. |
| `lastModifiedDateTime`    |`DateTimeOffset`                     | Yes | DateTime when review series was last modified.|
| `status`                  |`string`                             | No  | This read-only field specifies the status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`. |
| `descriptionForAdmins`    |`string`                             | Yes  | Description provided by review creators to provide more context of the review to admins. |
| `descriptionForReviewers` |`string`                             | Yes  | Description provided  by review creators to provide more context of the review to reviewers. |
| `createdBy`               |`microsoft.graph.userIdentity`       | No  | User who created this review. |
| `scope`                   |`microsoft.graph.accessReviewScope`  | Yes | Defines scope of users reviewed in a group. See [Supported queries for scope property]() table below. | 
| `instanceEnumerationScope`|`microsoft.graph.accessReviewScope`  | No | In the case of an all groups review, this determines the scope of which groups will be reviewed. Each group will become a unique accessReviewInstance of the access review series.  See [Supported queries for instanceEnumerationScope property]() table below. | 
| `settings`                |`microsoft.graph.accessReviewScheduleSettings`| No | The settings for an access review series, see type definition below. |
| `reviewers`               |`Collection(microsoft.graph.accessReviewReviewerScope)`| Yes | This collection of access review scopes is used to define who are the reviewers. See [Supported queries for reviewers property]() table below. |
| `instances`               |`Collection(microsoft.graph.accessReviewInstance)`| No | Set of access reviews instances for this access review series. Access reviews that do not recur will only have one instance; otherwise, there will be an instance for each recurrence. |



## Relationships




| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `reviewers`               |[userIdentity](useridentity.md) collection                     | The collection of reviewers for an access review, if access review reviewerType is of type `delegated`. |
| `decisions`               |[accessReviewDecision](accessreviewdecision.md) collection | The collection of decisions for this access review. |
| `myDecisions`             |[accessReviewDecision](accessreviewdecision.md) collection | The collection of decisions for the caller, if the caller is a reviewer. |
| `instances`               |[accessReview](accessreview.md) collection         | The collection of access reviews instances past, present and future, if this object is a recurring access review. |

Whether these relationships are present on an object, depends upon whether the object is a one-time access review, the series of a recurring access review, or an instance of a recurring access review.

| Scenario | Has reviewers? | Has decisions and myDecisions? | Has instances? |
|:---------|:---------------|:---------------|:---------------|
|One-time access review|Yes | Yes, once started | No |
| Recurring access review | Yes | No | Yes |
| Instance of a recurring access review | Yes | Yes, once started | No |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReview"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string",
 "startDateTime": "string (timestamp)",
 "endDateTime": "string (timestamp)",
 "status": "string",
 "description": "string",
 "businessFlowTemplateId": "string (identifier)",
 "reviewerType": "string",
 "createdBy": "microsoft.graph.userIdentity",
 "reviewedEntity": "microsoft.graph.identity",
 "settings": "microsoft.graph.accessReviewSettings",
 "reviewers": "Collection(microsoft.graph.userIdentity)"
}

```

## accessReviewSettings resource type

The **accessReviewSettings** resource type provides additional settings when creating an access review, to control the feature behavior when starting an access review. This type has the following properties. 

| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| `mailNotificationsEnabled`|`Boolean`                | Flag to indicate whether sending mails to reviewers and the review creator is enabled.                |
| `remindersEnabled`|`Boolean`       | Flag to indicate whether sending reminder emails to reviewers are enabled.       |
| `justificationRequiredOnApproval`|`Boolean` | Flag to indicate whether reviewers are required to provide a justification when reviewing access.|
| `activityDurationInDays`|`Int64` | The number of days of user activities to show to reviewers. |
| `autoReviewEnabled`|`Boolean` | Flag to indicate whether the feature should set a decision if the reviewer did not supply one, for use with auto-apply, is enabled. |
| `autoReviewSettings`|`microsoft.graph.autoReviewSettings` | Detailed settings for how the feature should set the review decision, for use with auto-apply, described below. |
| `recurrenceSettings`|`microsoft.graph.accessReviewRecurrenceSettings` | Detailed settings for recurrence, described below. |
| `autoApplyReviewResultsEnabled`|`Boolean` | Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled.  If not enabled, a user must, after the review completes, apply the access review. |
| `accessRecommendationsEnabled`|`Boolean` | Flag to indicate whether showing recommendations to reviewers is enabled. |

## autoReviewSettings resource type

The **autoReviewSettings** resource type is embedded within the access review settings, and along with **autoReviewEnabled**, specifies the behavior for the feature when an access review completes. The resource has one property, **notReviewedResult**. If you don't want to have a review decision recorded unless the reviewer makes an explicit choice, set **autoReviewEnabled** to false. If you want to have the system provide a decision even if the reviewer does not make a choice, set **autoReviewEnabled** to `true` and include **autoReviewSettings** with the **notReviewedResult** property. Then, when a review completes, based on the **notReviewedResult** property, the decision will be recorded to either `Approve` or `Deny`.   

| Property                     | Type     | Description                          |
| :--------------------------- | :------  | :----------                          |
| `notReviewedResult`          |`String`  | Must be one of `Approve`, `Deny`, or `Recommendation`.  If `Recommendation`, then `accessRecommendationsEnabled` in the settings should also be set to true. |


## accessReviewRecurrenceSettings resource type

The **accessReviewRecurrenceSettings** resource type is embedded within the access review settings, and specifies that the access review recurs at regular intervals.  This type has the following properties.

| Property                     | Type                                                                                                          | Description |
| :--------------------------- | :------------------------------------------------------------------------------------------------------------ | :---------- |
| `recurrenceType`|`String`    | The recurrence interval, which must be one of `onetime`, `weekly`, `monthly`, `quarterly`, 'halfyearly' or `annual`.                                                                   |
| `recurrenceEndType`|`String` | How the recurrence ends. If it is `never`, then there is no explicit end of the recurrence series. If it is `endBy`, then the recurrence ends at a certain date. If it is `occurrences`, then the series ends after `recurrenceCount` instances of the review have completed. |
| `durationInDays`|`Int32`     | The duration in days for recurrence.                                                                              |
| `recurrenceCount`|`Int32`    | The count of recurrences, if the value of `recurrenceEndType` is `occurrences`, or 0 otherwise.                                                        |


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
