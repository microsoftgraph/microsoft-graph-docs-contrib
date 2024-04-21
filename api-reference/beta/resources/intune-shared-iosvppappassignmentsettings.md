---
title: "iosVppAppAssignmentSettings resource type"
description: "Contains properties used to assign an iOS VPP mobile app to a group."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# iosVppAppAssignmentSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to assign an iOS VPP mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-shared-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|
|vpnConfigurationId|String|The VPN Configuration Id to apply for this app.|
|uninstallOnDeviceRemoval|Boolean|Whether or not to uninstall the app when device is removed from Intune.|
|isRemovable|Boolean|Whether or not the app can be removed by the user.|
|preventManagedAppBackup|Boolean|When TRUE, indicates that the app should not be backed up to iCloud. When FALSE, indicates that the app may be backed up to iCloud. By default, this property is set to null which internally is treated as FALSE.|
|preventAutoAppUpdate|Boolean|When TRUE, indicates that the app should not be automatically updated with the latest version from Apple app store. When FALSE, indicates that the app may be auto updated. By default, this property is set to null which internally is treated as FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosVppAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppAppAssignmentSettings",
  "useDeviceLicensing": true,
  "vpnConfigurationId": "String",
  "uninstallOnDeviceRemoval": true,
  "isRemovable": true,
  "preventManagedAppBackup": true,
  "preventAutoAppUpdate": true
}
```