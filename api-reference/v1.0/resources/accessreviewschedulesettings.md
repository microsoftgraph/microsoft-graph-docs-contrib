---
title: "accessReviewScheduleSettings resource type"
description: "Represents the settings associated with an access review series."
author: "isabelleatmsft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewScheduleSettings resource type

Namespace: microsoft.graph

The **accessReviewScheduleSettings** defines the settings of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applyActions|[accessReviewApplyAction](../resources/accessreviewapplyaction.md) collection|Describes the  actions to take once a review is complete. There are two types supported: `removeAccessApplyAction` (default) and `disableAndDeleteUserApplyAction`. Field only needs to be specified in the case of `disableAndDeleteUserApplyAction`. |
|autoApplyDecisionsEnabled|Boolean|If true, decisions are automatically applied to the reviewed resource after the review ends.|
|defaultDecision|String|Decision chosen if `defaultDecisionEnabled` is enabled. Possible values: "Approve", "Deny", or "Recommendation".|
|defaultDecisionEnabled|Boolean| If true, defaultDecision is taken on decisions items where reviewers did not respond.|
|instanceDurationInDays|Int32|Duration of each [accessReviewInstance](accessreviewinstance.md) in number of days.|
|justificationRequiredOnApproval|Boolean| If true, reviewers are required to provide justification with decisions.|
|mailNotificationsEnabled|Boolean|If true, email notifications are sent to reviewers.|
|recommendationsEnabled|Boolean|If true, reviewers see recommendations based on last interactive sign-in.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|Detailed settings for recurrence. Using standard Outlook recurrence object. The `dayOfMonth`  value is not supported. Use the property startDate on recurrenceRange to determine the day the review starts.|
|reminderNotificationsEnabled|Boolean|If true, reviewers receive reminder emails halfway through the review period.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewScheduleSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessReviewScheduleSettings",
  "mailNotificationsEnabled": "Boolean",
  "reminderNotificationsEnabled": "Boolean",
  "justificationRequiredOnApproval": "Boolean",
  "defaultDecisionEnabled": "Boolean",
  "defaultDecision": "String",
  "instanceDurationInDays": "Integer",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "autoApplyDecisionsEnabled": "Boolean",
  "applyActions": [
    {
      "@odata.type": "microsoft.graph.removeAccessApplyAction"
    }
  ],
  "recommendationsEnabled": "Boolean"
}
```
