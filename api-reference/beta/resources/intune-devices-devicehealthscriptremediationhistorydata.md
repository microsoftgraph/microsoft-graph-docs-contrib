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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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