---
title: "expeditedWindowsQualityUpdateSettings resource type"
description: "A complex type to store the expedited quality update settings such as release date and days until forced reboot."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# expeditedWindowsQualityUpdateSettings resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to store the expedited quality update settings such as release date and days until forced reboot.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|qualityUpdateRelease|String|The release date to identify a quality update.|
|daysUntilForcedReboot|Int32|The number of days after installation that forced reboot will happen.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.expeditedWindowsQualityUpdateSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.expeditedWindowsQualityUpdateSettings",
  "qualityUpdateRelease": "String",
  "daysUntilForcedReboot": 1024
}
```