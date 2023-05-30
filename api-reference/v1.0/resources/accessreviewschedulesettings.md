---
title: "accessReviewScheduleSettings resource type"
description: "Represents the settings associated with an access review series."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewScheduleSettings resource type

Namespace: microsoft.graph

The **accessReviewScheduleSettings** defines the settings of an [accessReviewScheduleDefinition](accessreviewscheduledefinition.md). 

## Properties
| Property    | Type   | Description |
| :---------------| :---------- | :---------- |
| applyActions|[accessReviewApplyAction](../resources/accessreviewapplyaction.md) collection | Optional field. Describes the  actions to take once a review is complete. There are two types that are currently supported: `removeAccessApplyAction` (default) and `disableAndDeleteUserApplyAction`. Field only needs to be specified in the case of `disableAndDeleteUserApplyAction`. |
| autoApplyDecisionsEnabled|Boolean | Indicates whether decisions are automatically applied. When set to `false`, an admin must apply the decisions manually once the reviewer completes the access review. When set to `true`, decisions are applied automatically after the access review instance duration ends, whether or not the reviewers have responded. Default value is `false`. <br/><br/> **CAUTION:** If both **autoApplyDecisionsEnabled** and **defaultDecisionEnabled** are `true`, all access for the principals to the resource risks being revoked if the reviewers fail to respond.|
| decisionHistoriesForReviewersEnabled|Boolean| Indicates whether decisions on previous access review stages are available for reviewers on an **accessReviewInstance** with multiple subsequent stages. If not provided, the default is disabled (`false`).|
| defaultDecision|String | Decision chosen if **defaultDecisionEnabled** is enabled. Can be one of `Approve`, `Deny`, or `Recommendation`. |
| defaultDecisionEnabled|Boolean | Indicates whether the default decision is enabled or disabled when reviewers do not respond. Default value is `false`. <br/><br/> **CAUTION:** If both **autoApplyDecisionsEnabled** and **defaultDecisionEnabled** are `true`, all access for the principals to the resource risks being revoked if the reviewers fail to respond.|
| instanceDurationInDays|Int32 | Duration of an access review instance in days. <br/>**NOTE:** If the **stageSettings** of the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object is defined, its **durationInDays** setting will be used instead of the value of this property. |
| justificationRequiredOnApproval|Boolean | Indicates whether reviewers are required to provide justification with their decision. Default value is `false`. |
| mailNotificationsEnabled|Boolean | Indicates whether emails are enabled or disabled. Default value is `false`.               |
| recommendationsEnabled|Boolean | Indicates whether decision recommendations are enabled or disabled. <br/>**NOTE:** If the **stageSettings** of the [accessReviewScheduleDefinition](accessreviewscheduledefinition.md) object is defined, its **recommendationsEnabled** setting will be used instead of the value of this property. |
| recurrence|[patternedRecurrence](../resources/patternedrecurrence.md) | Detailed settings for recurrence using the standard Outlook recurrence object. <br/><br/>**Note:** Only **dayOfMonth**, **interval**, and **type** (`weekly`, `absoluteMonthly`) properties are supported. Use the property **startDate** on **recurrenceRange** to determine the day the review starts. |
| reminderNotificationsEnabled|Boolean  | Indicates whether reminders are enabled or disabled. Default value is `false`.  |

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
  
  "applyActions": [
    {
      "@odata.type": "microsoft.graph.removeAccessApplyAction"
    }
  ],
  "autoApplyDecisionsEnabled": "Boolean",
  "defaultDecision": "String",
  "defaultDecisionEnabled": "Boolean",
  "decisionHistoriesForReviewersEnabled": "Boolean",
  "instanceDurationInDays": "Integer",
  "justificationRequiredOnApproval": "Boolean",
  "mailNotificationsEnabled": "Boolean",
  "recommendationsEnabled": "Boolean",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  },
  "reminderNotificationsEnabled": "Boolean"
}
```

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
