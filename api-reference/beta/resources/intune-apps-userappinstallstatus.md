---
title: "userAppInstallStatus resource type"
description: "Contains properties for the installation status for a user. This will be deprecated in May, 2023"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userAppInstallStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the installation status for a user. This will be deprecated in May, 2023

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userAppInstallStatuses](../api/intune-apps-userappinstallstatus-list.md)|[userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md) collection|List properties and relationships of the [userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md) objects.|
|[Get userAppInstallStatus](../api/intune-apps-userappinstallstatus-get.md)|[userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md)|Read properties and relationships of the [userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md) object.|
|[Create userAppInstallStatus](../api/intune-apps-userappinstallstatus-create.md)|[userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md)|Create a new [userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md) object.|
|[Delete userAppInstallStatus](../api/intune-apps-userappinstallstatus-delete.md)|None|Deletes a [userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md).|
|[Update userAppInstallStatus](../api/intune-apps-userappinstallstatus-update.md)|[userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md)|Update the properties of a [userAppInstallStatus](../resources/intune-apps-userappinstallstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|userName|String|User name.|
|userPrincipalName|String|User Principal Name.|
|installedDeviceCount|Int32|Installed Device Count.|
|failedDeviceCount|Int32|Failed Device Count.|
|notInstalledDeviceCount|Int32|Not installed device count.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|app|[mobileApp](../resources/intune-shared-mobileapp.md)|The navigation link to the mobile app.|
|deviceStatuses|[mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md) collection|The install state of the app on devices.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userAppInstallStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userAppInstallStatus",
  "id": "String (identifier)",
  "userName": "String",
  "userPrincipalName": "String",
  "installedDeviceCount": 1024,
  "failedDeviceCount": 1024,
  "notInstalledDeviceCount": 1024
}
```
