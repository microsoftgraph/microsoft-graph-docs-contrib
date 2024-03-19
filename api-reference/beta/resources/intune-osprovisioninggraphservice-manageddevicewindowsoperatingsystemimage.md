---
title: "managedDeviceWindowsOperatingSystemImage resource type"
description: "This entity defines different Windows Operating System products, like 'Windows 11 22H1', 'Windows 11 22H2' etc., along with their available configurations."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# managedDeviceWindowsOperatingSystemImage resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This entity defines different Windows Operating System products, like 'Windows 11 22H1', 'Windows 11 22H2' etc., along with their available configurations.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedDeviceWindowsOperatingSystemImages](../api/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage-list.md)|[managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) collection|List properties and relationships of the [managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) objects.|
|[Get managedDeviceWindowsOperatingSystemImage](../api/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage-get.md)|[managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md)|Read properties and relationships of the [managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) object.|
|[getAllManagedDeviceWindowsOSImages function](../api/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage-getallmanageddevicewindowsosimages.md)|[managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) collection||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Indicates the unique identifier of the Operating System Image metadata, example: 'Windows 11 22H1'. This specifies a unique Windows product version, which in turn can have multiple quality/security updates available. Supports: $filter, $select, $top, $orderBy, $skip. Read-only.|
|supportedEditions|[managedDeviceWindowsOperatingSystemEdition](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemedition.md) collection|Indicates the list of editions supported by the image along with their support dates. Supports: $filter, $select, $top, $skip. Read-only.|
|supportedArchitectures|[managedDeviceArchitecture](../resources/intune-shared-manageddevicearchitecture.md) collection|Indicates the list of architectures supported by the image. E.g. \['ARM64','X86'\]. Supports: $filter, $select, $top, $skip. Read-only.|
|availableUpdates|[managedDeviceWindowsOperatingSystemUpdate](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemupdate.md) collection|Indicates the available Quality/Security updates for a specific Windows product version (example: Windows 11 22H1), for upto last 3 Patch Tuesdays . This value in the API response would be updated 2-3 days after every Patch Tuesday. Supports: $filter, $select, $top, $skip. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemImage"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceWindowsOperatingSystemImage",
  "id": "String (identifier)",
  "supportedEditions": [
    {
      "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemEdition",
      "editionType": "String",
      "supportEndDate": "String (Date)"
    }
  ],
  "supportedArchitectures": [
    "String"
  ],
  "availableUpdates": [
    {
      "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemUpdate",
      "buildVersion": "String",
      "releaseMonth": 1024,
      "releaseYear": 1024
    }
  ]
}
```
