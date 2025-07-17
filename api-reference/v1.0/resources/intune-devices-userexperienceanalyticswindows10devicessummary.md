---
title: "userExperienceAnalyticsWindows10DevicesSummary resource type"
description: "The user experience analytics work from anywhere Windows 10 devices summary."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsWindows10DevicesSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics work from anywhere Windows 10 devices summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|unsupportedOSversionDeviceCount|Int32|The count of Windows 10 devices that have unsupported OS versions. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsWindows10DevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWindows10DevicesSummary",
  "unsupportedOSversionDeviceCount": 1024
}
```
