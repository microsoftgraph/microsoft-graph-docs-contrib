---
title: "accessReviewHistoryScheduleSettings resource type"
description: "In the Azure AD access review history feature, the `accessReviewHistoryScheduleSettings` represents the settings associated with an access review history definition series."
author: "isabelleatmsft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# accessReviewHistoryScheduleSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **accessReviewHistoryScheduleSettings** defines the settings of an [accessReviewHistoryDefinition](accessreviewhistorydefinition.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
| recurrence|[patternedRecurrence](patternedrecurrence.md) | Detailed settings for recurrence using the standard Outlook recurrence object. <br/><br/>**Note:** Only **dayOfMonth**, **interval**, and **type** (`weekly`, `absoluteMonthly`) properties are supported. Use the property **startDate** on **recurrenceRange** to determine the day the review starts. |
|reportRange|String|An ISO 8601 duration string specifying the lookback period of the generated review history data. For example, if a history definition is scheduled to run on the 1st of every month and the reportRange is `P1M`, each month access review history data will be collected containing only the previous month's review data. <br/><br/>**Note:** Only **years**, **months**, and **days** ISO 8601 properties are supported.|

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
