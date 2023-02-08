---
title: "userExperienceAnalyticsBatteryHealthModelPerformance resource type"
description: "The user experience analytics battery health model performance entity contains battery related information for all unique device models in their organization."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthModelPerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health model performance entity contains battery related information for all unique device models in their organization.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBatteryHealthModelPerformances](../api/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance-list.md)|[userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) objects.|
|[Get userExperienceAnalyticsBatteryHealthModelPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance-get.md)|[userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) object.|
|[Create userExperienceAnalyticsBatteryHealthModelPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance-create.md)|[userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md)|Create a new [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) object.|
|[Delete userExperienceAnalyticsBatteryHealthModelPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance-delete.md)|None|Deletes a [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md).|
|[Update userExperienceAnalyticsBatteryHealthModelPerformance](../api/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance-update.md)|[userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthModelPerformance](../resources/intune-devices-userexperienceanalyticsbatteryhealthmodelperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery health model performance object.|
|activeDevices|Int32|Number of active devices for that model. Valid values -2147483648 to 2147483647|
|model|String|The model name of the device.|
|manufacturer|String|Name of the device manufacturer.|
|averageMaxCapacityPercentage|Int32|The mean of the maximum capacity for all devices of a given model. Maximum capacity measures the full charge vs. design capacity for a device’s batteries.. Valid values -2147483648 to 2147483647|
|averageEstimatedRuntimeInMinutes|Int32|The mean of the estimated runtimes on full charge for all devices of a given model. Unit in minutes. Valid values -2147483648 to 2147483647|
|averageBatteryAgeInDays|Int32|The mean of the battery age for all devices of a given model in a tenant. Unit in days. Valid values -2147483648 to 2147483647|
|modelBatteryHealthScore|Int32|A weighted average of a model’s maximum capacity score and runtime estimate score. Values range from 0-100. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthModelPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthModelPerformance",
  "id": "String (identifier)",
  "activeDevices": 1024,
  "model": "String",
  "manufacturer": "String",
  "averageMaxCapacityPercentage": 1024,
  "averageEstimatedRuntimeInMinutes": 1024,
  "averageBatteryAgeInDays": 1024,
  "modelBatteryHealthScore": 1024
}
```
