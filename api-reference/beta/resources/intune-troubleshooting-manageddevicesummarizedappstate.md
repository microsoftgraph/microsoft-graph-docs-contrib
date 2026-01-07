---
title: "managedDeviceSummarizedAppState resource type"
description: "The summarized information associated with managed device app installation status."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedDeviceSummarizedAppState resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The summarized information associated with managed device app installation status.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|summarizedAppState|[deviceManagementScriptRunState](../resources/intune-troubleshooting-devicemanagementscriptrunstate.md)|The device management script run state for the device, which summarizes the overall status of apps installation on the devices. If any app installation encounters an error, the state will be marked as fail; otherwise, if any app is pending installation, the state will be marked as pending. All possible values include: unknown, fail, pending, notApplicable. The possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`, `unknownFutureValue`.|
|deviceId|String|The unique identifier (DeviceId) associated with the device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceSummarizedAppState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceSummarizedAppState",
  "summarizedAppState": "String",
  "deviceId": "String"
}
```