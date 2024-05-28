---
title: "managedDeviceCleanupRule resource type"
description: "Define the rule when the admin wants the devices to be cleaned up."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# managedDeviceCleanupRule resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Define the rule when the admin wants the devices to be cleaned up.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceCleanupRules](../api/intune-devices-manageddevicecleanuprule-list.md)|[managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) collection|List properties and relationships of the [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) objects.|
|[Get managedDeviceCleanupRule](../api/intune-devices-manageddevicecleanuprule-get.md)|[managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md)|Read properties and relationships of the [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) object.|
|[Create managedDeviceCleanupRule](../api/intune-devices-manageddevicecleanuprule-create.md)|[managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md)|Create a new [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) object.|
|[Delete managedDeviceCleanupRule](../api/intune-devices-manageddevicecleanuprule-delete.md)|None|Deletes a [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md).|
|[Update managedDeviceCleanupRule](../api/intune-devices-manageddevicecleanuprule-update.md)|[managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md)|Update the properties of a [managedDeviceCleanupRule](../resources/intune-devices-manageddevicecleanuprule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Indicates the identifier of the device cleanup rule. This id is assigned at the time when the device cleanup rule is created. Read-only.|
|displayName|String|Indicates the display name of the device cleanup rule.|
|description|String|Indicates the description for the device clean up rule.|
|deviceCleanupRulePlatformType|[deviceCleanupRulePlatformType](../resources/intune-devices-devicecleanupruleplatformtype.md)|Indicates the managed device platform for which the admin wants to create the device clean up rule. Possible values are: `all`, `androidAOSP`, `androidDeviceAdministrator`, `androidDedicatedAndFullyManagedCorporateOwnedWorkProfile`, `chromeOS`, `androidPersonallyOwnedWorkProfile`, `ios`, `macOS`, `windows`, `windowsHolographic`, `unknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|Indicates the date and time when the device cleanup rule was last modified. This property is read-only.|
|deviceInactivityBeforeRetirementInDays|Int32|Indicates the number of days when the device has not contacted Intune. Valid values 0 to 2147483647|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceCleanupRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceCleanupRule",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "deviceCleanupRulePlatformType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "deviceInactivityBeforeRetirementInDays": 1024
}
```