---
title: "businessFlowSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# businessFlowSettings resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [accessReviewSettings](../resources/accessreviewsettings.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessRecommendationsEnabled|Boolean|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|activityDurationInDays|Int32|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|autoApplyReviewResultsEnabled|Boolean|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|autoReviewEnabled|Boolean|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|autoReviewSettings|[autoReviewSettings](../resources/autoreviewsettings.md)|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|durationInDays|Int32|**TODO: Add Description**|
|justificationRequiredOnApproval|Boolean|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|mailNotificationsEnabled|Boolean|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|recurrenceSettings|[accessReviewRecurrenceSettings](../resources/accessreviewrecurrencesettings.md)|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|
|remindersEnabled|Boolean|**TODO: Add Description** Inherited from [accessReviewSettings](../resources/accessreviewsettings.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.businessFlowSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessFlowSettings",
  "mailNotificationsEnabled": "Boolean",
  "remindersEnabled": "Boolean",
  "justificationRequiredOnApproval": "Boolean",
  "recurrenceSettings": {
    "@odata.type": "microsoft.graph.accessReviewRecurrenceSettings"
  },
  "autoReviewEnabled": "Boolean",
  "activityDurationInDays": "Integer",
  "autoReviewSettings": {
    "@odata.type": "microsoft.graph.autoReviewSettings"
  },
  "autoApplyReviewResultsEnabled": "Boolean",
  "accessRecommendationsEnabled": "Boolean",
  "durationInDays": "Integer"
}
```

