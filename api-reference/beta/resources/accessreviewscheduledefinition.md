---
title: "accessReviewScheduleDefinition resource type"
description: "In the Azure AD access reviews feature, the `accessReviewScheduleDefinition` represents an access review or access review series."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewScheduleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the scheduling of an Azure AD [access review](accessreviewsv2-root.md). 

An **accessReviewScheduleDefinition** contains a list of [accessReviewInstance](accessreviewinstance.md) objects. Each recurrence of the schedule definition will create an instance. Instances also represent each unique group being reviewed. If a schedule definition reviews multiple groups, each group will have a unique instance per each recurrence. In the case of a one-time review, only one instance will be created per group.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List accessReviewScheduleDefinitions](../api/accessreviewscheduledefinition-list.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) collection | Lists every `accessReviewScheduleDefinition`. Does not include associated `accessReviewInstance` instances in listings. |
|[Get accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-get.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Get an `accessReviewScheduleDefinition` with a specified id. |
|[Create accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-create.md) | [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) | Create a new `accessReviewScheduleDefinition`. |
|[Delete accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-delete.md) | None. | Delete an `accessReviewScheduleDefinition` with a specified ID. |
|[Update accessReviewScheduleDefinition](../api/accessreviewscheduledefinition-update.md) | None. | Update properties of an `accessReviewScheduleDefinition` with a specified ID. |

## Properties
| Property                  | Type                                | Required on Create                     | Description |
| :-------------------------| :---------------------------------- | :---------- | :---------- |
| `id`                      |`String`                             | No  | The feature-assigned unique identifier of an access review.|
| `displayName`             |`String`                             | Yes | Name of access review series.|
| `createdDateTime`         |`DateTimeOffset`                     | No | DateTime when review series was created. |
| `lastModifiedDateTime`    |`DateTimeOffset`                     | No | DateTime when review series was last modified.|
| `status`                  |`string`                             | No  | This read-only field specifies the status of an accessReview. The typical states include `Initializing`, `NotStarted`, `Starting`, `InProgress`, `Completing`, `Completed`, `AutoReviewing`, and `AutoReviewed`. |
| `descriptionForAdmins`    |`string`                             | Yes  | Description provided by review creators to provide more context of the review to admins. |
| `descriptionForReviewers` |`string`                             | Yes  | Description provided  by review creators to provide more context of the review to reviewers. |
| `createdBy`               |[userIdentity](../resources/useridentity.md)       | No  | User who created this review. |
| `scope`                   |[accessReviewScope](../resources/accessreviewscope.md)  | Yes | Defines scope of users reviewed in a group. For supported scopes, see [accessReviewScope](accessreviewscope.md). | 
| `instanceEnumerationScope`|[accessReviewScope](../resources/accessreviewscope.md)  | No | In the case of an all groups review, this determines the scope of which groups will be reviewed. Each group will become a unique accessReviewInstance of the access review series.  For supported scopes, see [accessReviewScope](accessreviewscope.md). | 
| `settings`                |[accessReviewScheduleSettings](../resources/accessreviewschedulesettings.md)| No | The settings for an access review series, see type definition below. |
| `reviewers`               |[accessReviewReviewerScope](../resources/accessreviewreviewerscope.md) collection| Yes | This collection of access review scopes is used to define who are the reviewers. See [accessReviewReviewerScope](accessreviewreviewerscope.md). |
| `instances`               |`Collection(microsoft.graph.accessReviewInstance)`| No | Set of access reviews instances for this access review series. Access reviews that do not recur will only have one instance; otherwise, there will be an instance for each recurrence. |

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `instances`               |[accessReviewInstance](accessreviewinstance.md) collection         | If the `accessReviewScheduleDefinition` is a recurring access review, instances represent each recurrence. A review that does not recur will have exactly one instance. Instances also represent each unique group under review in the `accessReviewScheduleDefinition`. If a review has multiple groups and multiple instances, each group will have a unique instance for each recurrence. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.accessReviewScheduleDefinition",
  "baseType": "",
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
  "instanceEnumerationScope": {
    "@odata.type": "microsoft.graph.accessReviewScope"
  },
  "settings": {
    "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
  }
}
```
<!--
{
  "type": "#page.annotation",
  "description": "accessReviewScheduleDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
