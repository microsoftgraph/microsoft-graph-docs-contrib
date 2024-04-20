---
title: "managedDeviceWindowsOperatingSystemUpdate resource type"
description: "Updates for different Windows' versions are usually released on the Patch Tuesday or B-week  of each month. This complex type defines the Build-version and the release-date for a particular B-week update of the Windows' version."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# managedDeviceWindowsOperatingSystemUpdate resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Updates for different Windows' versions are usually released on the Patch Tuesday or B-week  of each month. This complex type defines the Build-version and the release-date for a particular B-week update of the Windows' version.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|buildVersion|String|Indicates the build version for associated windows update. Windows Operating System updates are usually released on the Patch Tuesday or B-week of each month. Read-only.|
|releaseMonth|Int32|Indicates the Month in which this B-week update was released. Read-only.|
|releaseYear|Int32|Indicates the Year in which this B-week update was released. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemUpdate"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceWindowsOperatingSystemUpdate",
  "buildVersion": "String",
  "releaseMonth": 1024,
  "releaseYear": 1024
}
```