---
title: "deviceManagement resource type"
description: "The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The deviceManagement resource represents a tenant's collection device identities that have been pre-staged in Intune, and the enrollment profiles that may be assigned to device identities that support pre-enrollment configuration.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-enrollment-devicemanagement-get.md)|[deviceManagement](../resources/intune-enrollment-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-enrollment-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-enrollment-devicemanagement-update.md)|[deviceManagement](../resources/intune-enrollment-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-enrollment-devicemanagement.md) object.|
|[getSuggestedEnrollmentLimit function](../api/intune-enrollment-devicemanagement-getsuggestedenrollmentlimit.md)|[suggestedEnrollmentLimit](../resources/intune-enrollment-suggestedenrollmentlimit.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|windowsAutopilotSettings|[windowsAutopilotSettings](../resources/intune-enrollment-windowsautopilotsettings.md)|The Windows autopilot account settings.|
|windowsAutopilotDeviceIdentities|[windowsAutopilotDeviceIdentity](../resources/intune-enrollment-windowsautopilotdeviceidentity.md) collection|The Windows autopilot device identities contained collection.|
|windowsAutopilotDeploymentProfiles|[windowsAutopilotDeploymentProfile](../resources/intune-enrollment-windowsautopilotdeploymentprofile.md) collection|Windows auto pilot deployment profiles|
|importedDeviceIdentities|[importedDeviceIdentity](../resources/intune-enrollment-importeddeviceidentity.md) collection|The imported device identities.|
|depOnboardingSettings|[depOnboardingSetting](../resources/intune-enrollment-deponboardingsetting.md) collection|This collections of multiple DEP tokens per-tenant.|
|importedWindowsAutopilotDeviceIdentities|[importedWindowsAutopilotDeviceIdentity](../resources/intune-enrollment-importedwindowsautopilotdeviceidentity.md) collection|Collection of imported Windows autopilot devices.|
|appleUserInitiatedEnrollmentProfiles|[appleUserInitiatedEnrollmentProfile](../resources/intune-enrollment-appleuserinitiatedenrollmentprofile.md) collection|Apple user initiated enrollment profiles|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)"
}
```
