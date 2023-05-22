---
title: "zebraFotaDeploymentSettings resource type"
description: "The Zebra FOTA deployment complex type that describes the settings required to create a FOTA deployment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# zebraFotaDeploymentSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The Zebra FOTA deployment complex type that describes the settings required to create a FOTA deployment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceModel|String|Deploy update for devices with this model only.|
|updateType|[zebraFotaUpdateType](../resources/intune-androidfotaservice-zebrafotaupdatetype.md)|The deployment's update type. Possible values are custom, latest, and auto. When custom mode is set, the request must provide artifact values. When latest type is set, the latest released update becomes the target OS. If latest is specified, the firmware target values are not required. Note: latest may update the device to a new Android version. When the value is set to auto, the device always looks for the latest package available and tries to update whenever a new package is available. This continues until the admin cancels the auto update. While other modes return an ID starting with FOTA-x, auto mode returns an ID starting with AUTO-x. Possible values are: `custom`, `latest`, `auto`, `unknownFutureValue`.|
|timeZoneOffsetInMinutes|Int32|This attribute indicates the deployment time offset (e.g.`180` represents an offset of `+03:00`, and `-270` represents an offset of `-04:30`). The time offset is the time timezone where the devices are located. The deployment start and end data uses this timezone|
|firmwareTargetArtifactDescription|String|A description provided by Zebra for the the firmware artifact to update the device to (e.g.: `LifeGuard Update 120 (released 29-June-2022)`.|
|firmwareTargetBoardSupportPackageVersion|String|Deployment's Board Support Package (BSP. E.g.: '01.18.02.00'). Required only for custom update type.|
|firmwareTargetPatch|String|Target patch name (e.g.: 'U06'). Required only for custom update type.|
|firmwareTargetOsVersion|String|Target OS Version (e.g.: '8.1.0'). Required only for custom update type.|
|scheduleMode|[zebraFotaScheduleMode](../resources/intune-androidfotaservice-zebrafotaschedulemode.md)|Deployment installation schedule mode. Default is installNow. All scheduled deployments date and time are in the device’s timezone. For Install Now, the date and time are in UTC (same date and time anywhere in the world). Possible values are: `installNow`, `scheduled`, `unknownFutureValue`.|
|scheduleDurationInDays|Int32|Maximum 28 days. Default is 28 days. Sequence of dates are: 1) Download start date. 2) Install start date. 3) Schedule end date. If any of the values are not provided, the date provided in the preceding step of the sequence is used. If no values are provided, the string value of the current UTC is used.|
|downloadRuleNetworkType|[zebraFotaNetworkType](../resources/intune-androidfotaservice-zebrafotanetworktype.md)|Download network type as described in 'zebraFotaNetworkType'. Default: any. Possible values are: `any`, `wifi`, `cellular`, `wifiAndCellular`, `unknownFutureValue`.|
|downloadRuleStartDateTime|DateTimeOffset|Date and time in the device time zone when the download will start (e.g., `2018-07-25T10:20:32`). The default value is UTC now and the maximum is 10 days from deployment creation.|
|installRuleStartDateTime|DateTimeOffset|Date and time in device time zone when the install will start. Default - download startDate if configured, otherwise defaults to NOW. Ignored when deployment update type was set to auto.|
|installRuleWindowStartTime|TimeOfDay|Time of day (00:00:00 - 23:30:00) when installation should begin. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 00:00:00. Respected for all values of update type, including AUTO.|
|installRuleWindowEndTime|TimeOfDay|Time of day after which the install cannot start. Possible range is 00:30:00 to 23:59:59. Should be greater than 'installRuleWindowStartTime' by 30 mins. The time is expressed in a 24-hour format, as hh:mm, and is in the device time zone. Default - 23:59:59. Respected for all values of update type, including AUTO.|
|batteryRuleMinimumBatteryLevelPercentage|Int32|Minimum battery level (%) required for both download and installation. Default: -1 (System defaults). Maximum is 100.|
|batteryRuleRequireCharger|Boolean|Flag indicating if charger is required. When set to false, the client can install updates whether the device is in or out of the charger. Applied only for installation. Defaults to false.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.zebraFotaDeploymentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.zebraFotaDeploymentSettings",
  "deviceModel": "String",
  "updateType": "String",
  "timeZoneOffsetInMinutes": 1024,
  "firmwareTargetArtifactDescription": "String",
  "firmwareTargetBoardSupportPackageVersion": "String",
  "firmwareTargetPatch": "String",
  "firmwareTargetOsVersion": "String",
  "scheduleMode": "String",
  "scheduleDurationInDays": 1024,
  "downloadRuleNetworkType": "String",
  "downloadRuleStartDateTime": "String (timestamp)",
  "installRuleStartDateTime": "String (timestamp)",
  "installRuleWindowStartTime": "String (time of day)",
  "installRuleWindowEndTime": "String (time of day)",
  "batteryRuleMinimumBatteryLevelPercentage": 1024,
  "batteryRuleRequireCharger": true
}
```
