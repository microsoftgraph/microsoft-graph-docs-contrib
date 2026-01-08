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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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