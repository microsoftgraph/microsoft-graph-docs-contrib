---
title: "androidDeviceOwnerSystemUpdateFreezePeriod resource type"
description: "Represents one item in the list of freeze periods for Android Device Owner system updates"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerSystemUpdateFreezePeriod resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents one item in the list of freeze periods for Android Device Owner system updates

## Properties
|Property|Type|Description|
|:---|:---|:---|
|startMonth|Int32|The month of the start date of the freeze period. Valid values 1 to 12|
|startDay|Int32|The day of the start date of the freeze period. Valid values 1 to 31|
|endMonth|Int32|The month of the end date of the freeze period. Valid values 1 to 12|
|endDay|Int32|The day of the end date of the freeze period. Valid values 1 to 31|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerSystemUpdateFreezePeriod"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerSystemUpdateFreezePeriod",
  "startMonth": 1024,
  "startDay": 1024,
  "endMonth": 1024,
  "endDay": 1024
}
```