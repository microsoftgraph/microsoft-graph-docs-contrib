---
title: "accessReviewScheduleDefinition resource type"
description: "Represents an access review or access review series."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# accessReviewScheduleDefinition resource type

Namespace: microsoft.graph

Represents the scheduling of a Microsoft Entra [access review](accessreviewsv2-overview.md). 

Inherits from [entity](../resources/entity.md).
An accessReviewScheduleDefinition contains a list of [accessReviewInstance](accessreviewinstance.md) objects. Each recurrence of the schedule definition creates an instance. Instances also represent each unique resource being reviewed. If a schedule definition reviews multiple resources (including multiple groups), each resource has a unique instance per each recurrence. In the case of a one-time review, only one instance is created per resource.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/accessreviewset-list-definitions.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every accessReviewScheduleDefinition. Doesn't include associated accessReviewInstance objects in the results. |
|[Get](../api/accessreviewscheduledefinition-get.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Get an accessReviewScheduleDefinition with a specified **id**. Doesn't include associated accessReviewInstance objects in the results. |
|[Create](../api/accessreviewset-post-definitions.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Create a new accessReviewScheduleDefinition. |
|[Delete](../api/accessreviewscheduledefinition-delete.md) | None. | Delete an accessReviewScheduleDefinition with a specified **id**. |
|[Update](../api/accessreviewscheduledefinition-update.md) | None. | Update properties of an accessReviewScheduleDefinition with a specified **id**. |
|[Filter by current user](../api/accessreviewscheduledefinition-filterbycurrentuser.md)|[accessReviewScheduleDefinition](../resources/accessreviewscheduledefinition.md) collection|Retrieves all definitions for which the calling user is a reviewer on one or more instances.|

## Properties
| Property | Type | Description |
| :------------------| :-------------- | :---------- |
| additionalNotificationRecipients   |[accessReviewNotificationRecipientItem](../resources/accessReviewNotificationRecipientItem.md) collection| Defines the list of additional users or group members to be notified of the access review progress. |
| backupReviewers (deprecated) |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers are notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner doesn't exist, or manager is specified as reviewer but a user's manager doesn't exist.  Supports `$select`. <br>**Note:** This property has been replaced by **fallbackReviewers**. However, specifying either **backupReviewers** or **fallbackReviewers** automatically populates the same values to the other property. |
| createdBy  |[userIdentity](../resources/useridentity.md)  | User who created this review. Read-only. |
| createdDateTime  |DateTimeOffset  | Timestamp when the access review series was created. Supports `$select`. Read-only. |
| descriptionForAdmins  |String  |  Description provided by review creators to provide more context of the review to admins. Supports `$select`. |
| descriptionForReviewers |String | Description provided  by review creators to provide more context of the review to reviewers. Reviewers see this description in the email sent to them requesting their review. Email notifications support up to 256 characters. Supports `$select`. |
| displayName | String   | Name of the access review series. Supports `$select` and `$orderby`. Required on create. |
| fallbackReviewers   |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of reviewer scopes is used to define the list of fallback reviewers. These fallback reviewers are notified to take action if no users are found from the list of reviewers specified. This could occur when either the group owner is specified as the reviewer but the group owner doesn't exist, or manager is specified as reviewer but a user's manager doesn't exist. See [accessReviewReviewerScope](accessreviewreviewerscope.md). Replaces **backupReviewers**. Supports `$select`. <br/><br/>**NOTE:** The value of this property will be ignored if fallback reviewers are assigned through the **stageSettings** property. |
| id | String | The feature-assigned unique identifier of an access review. Supports `$select`. Read-only.|
| instanceEnumerationScope|[accessReviewScope](../resources/accessreviewscope.md)  | This property is required when scoping a review to guest users' access across all Microsoft 365 groups and determines which Microsoft 365 groups are reviewed. Each group becomes a unique **accessReviewInstance** of the access review series.  For supported scopes, see [accessReviewScope](accessreviewscope.md). Supports `$select`. For examples of options for configuring instanceEnumerationScope, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept). |
| lastModifiedDateTime | DateTimeOffset   | Timestamp when the access review series was last modified. Supports `$select`. Read-only.|
| reviewers   |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| This collection of access review scopes is used to define who are the reviewers. The reviewers property is only updatable if individual users are assigned as reviewers. Required on create. Supports `$select`. For examples of options for assigning reviewers, see [Assign reviewers to your access review definition using the Microsoft Graph API](/graph/accessreviews-reviewers-concept). <br/><br/>**NOTE:** The value of this property will be ignored if reviewers are assigned through the **stageSettings** property.  |
| scope  |[accessReviewScope](../resources/accessreviewscope.md)  | Defines the entities whose access is reviewed. For supported scopes, see [accessReviewScope](accessreviewscope.md). Required on create. Supports `$select` and `$filter` (`contains` only). For examples of options for configuring scope, see [Configure the scope of your access review definition using the Microsoft Graph API](/graph/accessreviews-scope-concept). |
| settings  |[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)| The settings for an access review series, see type definition below. Supports `$select`. Required on create. |
|stageSettings|[accessReviewStageSettings](../resources/accessreviewstagesettings.md) collection| Required only for a multi-stage access review to define the stages and their settings. You can break down each review instance into up to three sequential stages, where each stage can have a different set of reviewers, fallback reviewers, and settings. Stages are created sequentially based on the **dependsOn** property. Optional.  <br/><br/>When this property is defined, its settings are used instead of the corresponding settings in the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object and its **settings**, **reviewers**, and **fallbackReviewers** properties. |
| status  |String   | This read-only field specifies the status of an access review. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`.  <br>Supports `$select`, `$orderby`, and `$filter` (`eq` only). Read-only. |

## Relationships
| Relationship | Type	|Description|
|:---|:---|:---|
| instances|[accessReviewInstance](accessreviewinstance.md) collection | If the **accessReviewScheduleDefinition** is a recurring access review, instances represent each recurrence. A review that doesn't recur will have exactly one instance. Instances also represent each unique resource under review in the **accessReviewScheduleDefinition**. If a review has multiple resources and multiple instances, each resource has a unique instance for each recurrence. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScheduleDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String",
  "descriptionForAdmins": "String",
  "descriptionForReviewers": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.userIdentity"
  },
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
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "stageSettings": [
    {
      "@odata.type": "microsoft.graph.accessReviewStageSettings"
    }
  ],
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  },
  "additionalNotificationRecipients": [
    {
        "@odata.type": "microsoft.graph.accessReviewNotificationRecipientItem"
    }
  ]
}
```
