---
title: "userExperienceAnalyticsBatteryHealthAppImpact resource type"
description: "The user experience analytics battery health app impact entity contains battery usage related information at an app level for the tenant."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsBatteryHealthAppImpact resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics battery health app impact entity contains battery usage related information at an app level for the tenant.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsBatteryHealthAppImpacts](../api/intune-devices-userexperienceanalyticsbatteryhealthappimpact-list.md)|[userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) collection|List properties and relationships of the [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) objects.|
|[Get userExperienceAnalyticsBatteryHealthAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthappimpact-get.md)|[userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md)|Read properties and relationships of the [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) object.|
|[Create userExperienceAnalyticsBatteryHealthAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthappimpact-create.md)|[userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md)|Create a new [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) object.|
|[Delete userExperienceAnalyticsBatteryHealthAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthappimpact-delete.md)|None|Deletes a [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md).|
|[Update userExperienceAnalyticsBatteryHealthAppImpact](../api/intune-devices-userexperienceanalyticsbatteryhealthappimpact-update.md)|[userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md)|Update the properties of a [userExperienceAnalyticsBatteryHealthAppImpact](../resources/intune-devices-userexperienceanalyticsbatteryhealthappimpact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics battery app impact object.|
|activeDevices|Int32|Number of active devices for using that app over a 14-day period. Valid values -2147483648 to 2147483647|
|appName|String|App name. Eg: oltk.exe|
|appDisplayName|String|User friendly display name for the app. Eg: Outlook|
|appPublisher|String|App publisher. Eg: Microsoft Corporation|
|isForegroundApp|Boolean|true if the user had active interaction with the app.|
|batteryUsagePercentage|Double|The percent of total battery power used by this application when the device was not plugged into AC power, over 14 days computed across all devices in the tenant. Unit in percentage. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsBatteryHealthAppImpact"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsBatteryHealthAppImpact",
  "id": "String (identifier)",
  "activeDevices": 1024,
  "appName": "String",
  "appDisplayName": "String",
  "appPublisher": "String",
  "isForegroundApp": true,
  "batteryUsagePercentage": "4.2"
}
```
