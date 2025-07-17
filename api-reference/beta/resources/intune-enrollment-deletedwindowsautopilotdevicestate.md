---
title: "deletedWindowsAutopilotDeviceState resource type"
description: "Intune Enrollment Deletedwindowsautopilotdevicestate Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deletedWindowsAutopilotDeviceState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|serialNumber|String|Autopilot Device Serial Number|
|deviceRegistrationId|String|ZTD Device Registration ID .|
|deletionState|[windowsAutopilotDeviceDeletionState](../resources/intune-enrollment-windowsautopilotdevicedeletionstate.md)|Device deletion state. Possible values are: `unknown`, `failed`, `accepted`, `error`.|
|errorMessage|String|Device deletion error message.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deletedWindowsAutopilotDeviceState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deletedWindowsAutopilotDeviceState",
  "serialNumber": "String",
  "deviceRegistrationId": "String",
  "deletionState": "String",
  "errorMessage": "String"
}
```