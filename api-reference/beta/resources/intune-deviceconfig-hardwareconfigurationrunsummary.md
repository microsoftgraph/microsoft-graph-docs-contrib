---
title: "hardwareConfigurationRunSummary resource type"
description: "Contains properties for the run summary of a hardware configuration script."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# hardwareConfigurationRunSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the run summary of a hardware configuration script.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get hardwareConfigurationRunSummary](../api/intune-deviceconfig-hardwareconfigurationrunsummary-get.md)|[hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md)|Read properties and relationships of the [hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md) object.|
|[Update hardwareConfigurationRunSummary](../api/intune-deviceconfig-hardwareconfigurationrunsummary-update.md)|[hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md)|Update the properties of a [hardwareConfigurationRunSummary](../resources/intune-deviceconfig-hardwareconfigurationrunsummary.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the hardware configuration run summary entity. This property is read-only.|
|successfulDeviceCount|Int32|Number of devices for which hardware configured without any issue|
|failedDeviceCount|Int32|Number of devices for which hardware configuration found an issue|
|pendingDeviceCount|Int32|Number of devices for which hardware configuration is in pending state|
|errorDeviceCount|Int32|Number of devices for which hardware configuration state is error|
|notApplicableDeviceCount|Int32|Number of devices for which hardware configuration state is not applicable|
|unknownDeviceCount|Int32|Number of devices for which hardware configuration state is unknown|
|successfulUserCount|Int32|Number of users for which hardware configured without any issue|
|failedUserCount|Int32|Number of users for which hardware configuration found an issue|
|pendingUserCount|Int32|Number of users for which hardware configuration is in pending state|
|errorUserCount|Int32|Number of users for which hardware configuration state is error|
|notApplicableUserCount|Int32|Number of users for which hardware configuration state is not applicable|
|unknownUserCount|Int32|Number of users for which hardware configuration state is unknown|
|lastRunDateTime|DateTimeOffset|Last run time for the configuration across all devices|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.hardwareConfigurationRunSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.hardwareConfigurationRunSummary",
  "id": "String (identifier)",
  "successfulDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "pendingDeviceCount": 1024,
  "errorDeviceCount": 1024,
  "notApplicableDeviceCount": 1024,
  "unknownDeviceCount": 1024,
  "successfulUserCount": 1024,
  "failedUserCount": 1024,
  "pendingUserCount": 1024,
  "errorUserCount": 1024,
  "notApplicableUserCount": 1024,
  "unknownUserCount": 1024,
  "lastRunDateTime": "String (timestamp)"
}
```
