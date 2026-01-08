---
title: "deviceHealthScriptRemediationHistory resource type"
description: "The number of devices remediated by a device health script on a given date with the last modified time."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceHealthScriptRemediationHistory resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The number of devices remediated by a device health script on a given date with the last modified time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lastModifiedDateTime|DateTimeOffset|The date on which the results history is calculated for the healthscript.|
|historyData|[deviceHealthScriptRemediationHistoryData](../resources/intune-devices-devicehealthscriptremediationhistorydata.md) collection|The number of devices remediated by the device health script on the given date.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceHealthScriptRemediationHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceHealthScriptRemediationHistory",
  "lastModifiedDateTime": "String (timestamp)",
  "historyData": [
    {
      "@odata.type": "microsoft.graph.deviceHealthScriptRemediationHistoryData",
      "date": "String (Date)",
      "remediatedDeviceCount": 1024,
      "noIssueDeviceCount": 1024,
      "detectFailedDeviceCount": 1024
    }
  ]
}
```