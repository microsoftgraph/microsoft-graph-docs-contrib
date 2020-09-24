---
title: "accessReviewScheduleSettings resource type"
description: "In the Azure AD access reviews feature, the `accessReviewScheduleSettings` represents the settings associated with an access review series.  "
localization_priority: Normal
author: "isabelleatmsft"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# accessReviewScheduleSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewScheduleSettings** defines the settings of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). 

## Properties
| Property                  | Type                                 | Description |
| :-------------------------| :---------- | :---------- |
| `mailNotificationsEnabled`|`Boolean`                | Flag to indicate whether emails are enabled/disabled.                |
| `reminderNotificationsEnabled`|`Boolean`       | Flag to indicate whether reminders are enabled/disabled.       |
| `justificationRequiredOnApproval`|`Boolean` | Flag to indicate whether reviewers are required to provide justification with their decision. |
| `defaultDecisionEnabled`|`Boolean` | Flag to indicate whether default decision is enabled/disabled when reviewers do not respond. |
| `defaultDecision`|`String` | Decision chosen if `defaultDecisionEnabled` is enabled. Can be one of "Approve", "Deny", or "Recommendation". |
| `instanceDurationInDays`|`Int32` | Duration of each recurrence of review (`accessReviewInstance`) in number of days. |
| `recurrence`|`microsoft.graph.patternedRecurrence` | Detailed settings for recurrence. Using standard outlook recurrence object.  |
| `autoApplyDecisionsEnabled`|`Boolean` | Flag to indicate whether auto-apply feature is enabled. |
| `applyActions`|`Collection(microsoft.graph.accessReviewApplyAction)` | Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: `removeAccessApplyAction` (default) and `disableAndDeleteUserApplyAction`. Field only needs to be specified in the case of `disableAndDeleteUserApplyAction`. See below for more information. |
| `recommendationsEnabled`|`Boolean` | Flag to indicate whether decision recommendations are enabled/disabled. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
}-->

```json
{
 "mailNotificationsEnabled": "boolean",
 "reminderNotificationsEnabled": "boolean",
 "justificationRequiredOnApproval": "boolean",
 "defaultDecisionEnabled": "boolean",
 "defaultDecision": "string",
 "instanceDurationInDays": "Int32",
 "recurrence": "microsoft.graph.patternedRecurrence",
 "autoApplyDecisionsEnabled": "boolean",
 "applyActions": "Collection(microsoft.graph.accessReviewApplyAction)",
 "recommendationsEnabled": "boolean"
}
```

## accessReviewApplyAction

**accessReviewApplyAction** is a complex type representing a base class for apply actions. There are two derived types currently supported: `removeAccessApplyAction` and `disableAndDeleteApplyAction`.

**removeAccessApplyAction** is a derived type of `accessReviewApplyAction` that indicates removing access of an entity being reviewed upon completion of the review. This is the default type.

**disableAndDeleteUserApplyAction** is a derived type of `accessReviewApplyAction` that indicates disabling and deleting the user being reviewed upon completion of the review.           


<!--
{
  "type": "#page.annotation",
  "description": "accessReviewScheduleSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
