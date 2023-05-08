---
title: "macOsLobAppAssignmentSettings resource type"
description: "Contains properties used to assign a macOS LOB app to a group."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOsLobAppAssignmentSettings resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign a macOS LOB app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-apps-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|uninstallOnDeviceRemoval|Boolean|When TRUE, indicates that the app should be uninstalled when the device is removed from Intune. When FALSE, indicates that the app will not be uninstalled when the device is removed from Intune.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOsLobAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOsLobAppAssignmentSettings",
  "uninstallOnDeviceRemoval": true
}
```
