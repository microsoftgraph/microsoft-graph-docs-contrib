---
title: "windowsMinimumOperatingSystem resource type"
description: "The minimum operating system required for a Windows mobile app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsMinimumOperatingSystem resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The minimum operating system required for a Windows mobile app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|v8_0|Boolean|Windows version 8.0 or later.|
|v8_1|Boolean|Windows version 8.1 or later.|
|v10_0|Boolean|Windows version 10.0 or later.|
|v10_1607|Boolean|Windows 10 1607 or later.|
|v10_1703|Boolean|Windows 10 1703 or later.|
|v10_1709|Boolean|Windows 10 1709 or later.|
|v10_1803|Boolean|Windows 10 1803 or later.|
|v10_1809|Boolean|Windows 10 1809 or later.|
|v10_1903|Boolean|Windows 10 1903 or later.|
|v10_1909|Boolean|Windows 10 1909 or later.|
|v10_2004|Boolean|Windows 10 2004 or later.|
|v10_2H20|Boolean|Windows 10 2H20 or later.|
|v10_21H1|Boolean|Windows 10 21H1 or later.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsMinimumOperatingSystem",
  "v8_0": true,
  "v8_1": true,
  "v10_0": true,
  "v10_1607": true,
  "v10_1703": true,
  "v10_1709": true,
  "v10_1803": true,
  "v10_1809": true,
  "v10_1903": true,
  "v10_1909": true,
  "v10_2004": true,
  "v10_2H20": true,
  "v10_21H1": true
}
```