---
title: "userExperienceAnalyticsInsight resource type"
description: "The user experience analytics insight is the recomendation to improve the user experience analytics score."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsInsight resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics insight is the recomendation to improve the user experience analytics score.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userExperienceAnalyticsMetricId|String|The unique identifier of the user experience analytics metric.|
|insightId|String|The unique identifier of the user experience analytics insight.|
|values|[userExperienceAnalyticsInsightValue](../resources/intune-devices-userexperienceanalyticsinsightvalue.md) collection|The value of the user experience analytics insight.|
|severity|[userExperienceAnalyticsInsightSeverity](../resources/intune-devices-userexperienceanalyticsinsightseverity.md)|The severity of the user experience analytics insight. Possible values are: none, informational, warning, error. None by default. Possible values are: `none`, `informational`, `warning`, `error`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsInsight"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsInsight",
  "userExperienceAnalyticsMetricId": "String",
  "insightId": "String",
  "values": [
    {
      "@odata.type": "microsoft.graph.insightValueDouble",
      "value": "4.2"
    }
  ],
  "severity": "String"
}
```
