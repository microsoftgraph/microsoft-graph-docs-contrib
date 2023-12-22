---
title: "userExperienceAnalyticsWorkFromAnywhereDevicesSummary resource type"
description: "The user experience analytics Work From Anywhere metrics devices summary."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsWorkFromAnywhereDevicesSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics Work From Anywhere metrics devices summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|autopilotDevicesSummary|[userExperienceAnalyticsAutopilotDevicesSummary](../resources/intune-devices-userexperienceanalyticsautopilotdevicessummary.md)|The user experience analytics work from anywhere Autopilot devices summary. Read-only.|
|cloudManagementDevicesSummary|[userExperienceAnalyticsCloudManagementDevicesSummary](../resources/intune-devices-userexperienceanalyticscloudmanagementdevicessummary.md)|The user experience analytics work from anywhere Cloud management devices summary. Read-only.|
|windows10DevicesSummary|[userExperienceAnalyticsWindows10DevicesSummary](../resources/intune-devices-userexperienceanalyticswindows10devicessummary.md)|The user experience analytics work from anywhere Windows 10 devices summary. Read-only.|
|cloudIdentityDevicesSummary|[userExperienceAnalyticsCloudIdentityDevicesSummary](../resources/intune-devices-userexperienceanalyticscloudidentitydevicessummary.md)|The user experience analytics work from anywhere Cloud Identity devices summary. Read-only.|
|totalDevices|Int32|The total count of devices. Read-only. Valid values -2147483648 to 2147483647|
|coManagedDevices|Int32|Total number of co-managed devices. Read-only. Valid values -2147483648 to 2147483647|
|intuneDevices|Int32|The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647|
|tenantAttachDevices|Int32|Total count of tenant attach devices. Read-only. Valid values -2147483648 to 2147483647|
|windows10Devices|Int32|The count of windows 10 devices. Read-only. Valid values -2147483648 to 2147483647|
|windows10DevicesWithoutTenantAttach|Int32|The count of windows 10 devices that are Intune and co-managed. Read-only. Valid values -2147483648 to 2147483647|
|unsupportedOSversionDevices|Int32|The count of Windows 10 devices that have unsupported OS versions. Read-only. Valid values -2147483648 to 2147483647|
|devicesWithoutCloudIdentity|Int32|The count of devices that are not cloud identity. Read-only. Valid values -2147483648 to 2147483647|
|devicesNotAutopilotRegistered|Int32|The count of intune devices that are not autopilot registerd. Read-only. Valid values -2147483648 to 2147483647|
|devicesWithoutAutopilotProfileAssigned|Int32|The count of intune devices not autopilot profile assigned. Read-only. Valid values -2147483648 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsWorkFromAnywhereDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereDevicesSummary",
  "autopilotDevicesSummary": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsAutopilotDevicesSummary",
    "devicesNotAutopilotRegistered": 1024,
    "devicesWithoutAutopilotProfileAssigned": 1024,
    "totalWindows10DevicesWithoutTenantAttached": 1024
  },
  "cloudManagementDevicesSummary": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsCloudManagementDevicesSummary",
    "coManagedDeviceCount": 1024,
    "intuneDeviceCount": 1024,
    "tenantAttachDeviceCount": 1024
  },
  "windows10DevicesSummary": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsWindows10DevicesSummary",
    "unsupportedOSversionDeviceCount": 1024
  },
  "cloudIdentityDevicesSummary": {
    "@odata.type": "microsoft.graph.userExperienceAnalyticsCloudIdentityDevicesSummary",
    "deviceWithoutCloudIdentityCount": 1024
  },
  "totalDevices": 1024,
  "coManagedDevices": 1024,
  "intuneDevices": 1024,
  "tenantAttachDevices": 1024,
  "windows10Devices": 1024,
  "windows10DevicesWithoutTenantAttach": 1024,
  "unsupportedOSversionDevices": 1024,
  "devicesWithoutCloudIdentity": 1024,
  "devicesNotAutopilotRegistered": 1024,
  "devicesWithoutAutopilotProfileAssigned": 1024
}
```
