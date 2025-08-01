---
title: "deviceHealthScriptRemediationHistoryData resource type"
description: "The number of devices remediated by a device health script on a given date."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceHealthScriptRemediationHistoryData resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The number of devices remediated by a device health script on a given date.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|date|Date|The date on which devices were remediated by the device health script.|
|remediatedDeviceCount|Int32|The number of devices remediated by the device health script.|
|noIssueDeviceCount|Int32|The number of devices that were found to have no issue by the device health script.|
|detectFailedDeviceCount|Int32|The number of devices for which the detection script found an issue.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptRemediationHistoryData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRemediationHistoryData",
  "date": "String (Date)",
  "remediatedDeviceCount": 1024,
  "noIssueDeviceCount": 1024,
  "detectFailedDeviceCount": 1024
}
```