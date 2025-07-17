---
title: "userExperienceAnalyticsCategory resource type"
description: "The user experience analytics category entity contains the scores and insights for the various metrics of a category."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsCategory resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics category entity contains the scores and insights for the various metrics of a category.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get userExperienceAnalyticsCategory](../api/intune-devices-userexperienceanalyticscategory-get.md)|[userExperienceAnalyticsCategory](../resources/intune-devices-userexperienceanalyticscategory.md)|Read properties and relationships of the [userExperienceAnalyticsCategory](../resources/intune-devices-userexperienceanalyticscategory.md) object.|
|[Update userExperienceAnalyticsCategory](../api/intune-devices-userexperienceanalyticscategory-update.md)|[userExperienceAnalyticsCategory](../resources/intune-devices-userexperienceanalyticscategory.md)|Update the properties of a [userExperienceAnalyticsCategory](../resources/intune-devices-userexperienceanalyticscategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics category. Read-only.|
|overallScore|Int32|The overall score of the user experience analytics category.|
|totalDevices|Int32|The total device count of the user experience analytics category.|
|insights|[userExperienceAnalyticsInsight](../resources/intune-devices-userexperienceanalyticsinsight.md) collection|The insights for the category. Read-only.|
|state|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The current health state of the user experience analytics category. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|metricValues|[userExperienceAnalyticsMetric](../resources/intune-devices-userexperienceanalyticsmetric.md) collection|The metric values for the user experience analytics category. Read-only.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsCategory",
  "id": "String (identifier)",
  "overallScore": 1024,
  "totalDevices": 1024,
  "insights": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsInsight",
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
  ],
  "state": "String"
}
```
