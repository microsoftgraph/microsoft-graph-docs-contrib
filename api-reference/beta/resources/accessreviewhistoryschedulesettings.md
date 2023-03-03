---
title: "accessReviewHistoryScheduleSettings resource type"
description: "In Azure AD access reviews, the accessReviewHistoryScheduleSettings represents the settings associated with an access review history definition series."
author: "jyothig123"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewHistoryScheduleSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the settings of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md) object.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| recurrence|[patternedRecurrence](patternedrecurrence.md) | Detailed settings for recurrence using the standard Outlook recurrence object. <br/><br/>**Note:** Only **dayOfMonth**, **interval**, and **type** (`weekly`, `absoluteMonthly`) properties are supported. Use the property **startDate** on **recurrenceRange** to determine the day the review starts. Required. |
|reportRange|String|A duration string in ISO 8601 duration format specifying the lookback period of the generated review history data. For example, if a history definition is scheduled to run on the 1st of every month, the **reportRange** is `P1M`. In this case, on the first of every month, access review history data will be collected containing only the previous month's review data. <br/><br/>**Note:** Only **years**, **months**, and **days** ISO 8601 properties are supported. Required.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessReviewHistoryScheduleSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.accessReviewHistoryScheduleSettings",
  "reportRange": "String",
  "recurrence": {
    "@odata.type": "microsoft.graph.patternedRecurrence"
  }
}
```
