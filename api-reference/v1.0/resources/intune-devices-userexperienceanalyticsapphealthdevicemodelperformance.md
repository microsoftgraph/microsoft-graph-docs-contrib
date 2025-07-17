---
title: "userExperienceAnalyticsAppHealthDeviceModelPerformance resource type"
description: "The user experience analytics device model performance entity contains device model performance details."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsAppHealthDeviceModelPerformance resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device model performance entity contains device model performance details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAppHealthDeviceModelPerformances](../api/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance-list.md)|[userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md) objects.|
|[Get userExperienceAnalyticsAppHealthDeviceModelPerformance](../api/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance-get.md)|[userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md)|Read properties and relationships of the [userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md) object.|
|[Create userExperienceAnalyticsAppHealthDeviceModelPerformance](../api/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance-create.md)|[userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md)|Create a new [userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md) object.|
|[Delete userExperienceAnalyticsAppHealthDeviceModelPerformance](../api/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance-delete.md)|None|Deletes a [userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md).|
|[Update userExperienceAnalyticsAppHealthDeviceModelPerformance](../api/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance-update.md)|[userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md)|Update the properties of a [userExperienceAnalyticsAppHealthDeviceModelPerformance](../resources/intune-devices-userexperienceanalyticsapphealthdevicemodelperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device model performance object. Supports: $select, $OrderBy. Read-only.|
|deviceModel|String|The model name of the device. Supports: $select, $OrderBy. Read-only.|
|deviceManufacturer|String|The manufacturer name of the device. Supports: $select, $OrderBy. Read-only.|
|activeDeviceCount|Int32|The number of active devices for the model. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|meanTimeToFailureInMinutes|Int32|The mean time to failure for the application in minutes. Valid values 0 to 2147483647. Supports: $filter, $select, $OrderBy. Read-only. Valid values -2147483648 to 2147483647|
|modelAppHealthScore|Double|The application health score of the device model. Valid values 0 to 100. Supports: $filter, $select, $OrderBy. Read-only. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|modelAppHealthStatus|String|The overall app health status of the device model.|
|healthStatus|[userExperienceAnalyticsHealthState](../resources/intune-devices-userexperienceanalyticshealthstate.md)|The health state of the user experience analytics model. Possible values are: unknown, insufficientData, needsAttention, meetingGoals. Unknown by default. Supports: $filter, $select, $OrderBy. Read-only. Possible values are: `unknown`, `insufficientData`, `needsAttention`, `meetingGoals`, `unknownFutureValue`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAppHealthDeviceModelPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAppHealthDeviceModelPerformance",
  "id": "String (identifier)",
  "deviceModel": "String",
  "deviceManufacturer": "String",
  "activeDeviceCount": 1024,
  "meanTimeToFailureInMinutes": 1024,
  "modelAppHealthScore": "4.2",
  "modelAppHealthStatus": "String",
  "healthStatus": "String"
}
```
