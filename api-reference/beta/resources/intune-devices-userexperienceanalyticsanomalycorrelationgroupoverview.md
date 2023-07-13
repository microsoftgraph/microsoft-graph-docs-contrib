---
title: "userExperienceAnalyticsAnomalyCorrelationGroupOverview resource type"
description: "The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAnomalyCorrelationGroupOverview resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics anomaly correlation group overview entity contains the information for each correlation group of an anomaly.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAnomalyCorrelationGroupOverviews](../api/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview-list.md)|[userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) collection|List properties and relationships of the [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) objects.|
|[Get userExperienceAnalyticsAnomalyCorrelationGroupOverview](../api/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview-get.md)|[userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md)|Read properties and relationships of the [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) object.|
|[Create userExperienceAnalyticsAnomalyCorrelationGroupOverview](../api/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview-create.md)|[userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md)|Create a new [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) object.|
|[Delete userExperienceAnalyticsAnomalyCorrelationGroupOverview](../api/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview-delete.md)|None|Deletes a [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md).|
|[Update userExperienceAnalyticsAnomalyCorrelationGroupOverview](../api/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview-update.md)|[userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md)|Update the properties of a [userExperienceAnalyticsAnomalyCorrelationGroupOverview](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupoverview.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the user experience analytics anomaly correlation group overview object.|
|anomalyId|String|The unique identifier of the anomaly. Anomaly details such as name and type can be found in the UserExperienceAnalyticsAnomalySeverityOverview entity.|
|correlationGroupId|String|The unique identifier for the correlation group which will uniquely identify one of the correlation group within an anomaly. The correlation Id can be mapped to the correlation group name by concatinating the correlation group features. Example of correlation group name which is the indicative of concatenated features names are  for names, Contoso manufacture 4.4.1 and Windows 11.22621.1485.|
|correlationGroupFeatures|[userExperienceAnalyticsAnomalyCorrelationGroupFeature](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupfeature.md) collection|Describes the features of a device that are shared between all devices in a correlation group.|
|correlationGroupPrevalence|[userExperienceAnalyticsAnomalyCorrelationGroupPrevalence](../resources/intune-devices-userexperienceanalyticsanomalycorrelationgroupprevalence.md)|The prevalence of the correlation group. Possible values are: high, medium or low. Possible values are: `high`, `medium`, `low`, `unknownFutureValue`.|
|correlationGroupPrevalencePercentage|Double|The percentage of the devices in the correlation group that are anomalous. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|totalDeviceCount|Int32|Indicates the total number of devices in the tenant. Valid values -2147483648 to 2147483647|
|anomalyCorrelationGroupCount|Int32|Indicates the number of correlation groups in the anomaly. Valid values -2147483648 to 2147483647|
|correlationGroupDeviceCount|Int32|Indicates the total number of devices in a correlation group. Valid values -2147483648 to 2147483647|
|correlationGroupAnomalousDeviceCount|Int32|Indicates the total number of devices affected by the anomaly in the correlation group. Valid values -2147483648 to 2147483647|
|correlationGroupAtRiskDeviceCount|Int32|Indicates the total number of devices at risk in the correlation group. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupOverview",
  "id": "String (identifier)",
  "anomalyId": "String",
  "correlationGroupId": "String",
  "correlationGroupFeatures": [
    {
      "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupFeature",
      "deviceFeatureType": "String",
      "values": [
        "String"
      ]
    }
  ],
  "correlationGroupPrevalence": "String",
  "correlationGroupPrevalencePercentage": "4.2",
  "totalDeviceCount": 1024,
  "anomalyCorrelationGroupCount": 1024,
  "correlationGroupDeviceCount": 1024,
  "correlationGroupAnomalousDeviceCount": 1024,
  "correlationGroupAtRiskDeviceCount": 1024
}
```
