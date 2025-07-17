---
title: "mobileAppInstallStatus resource type"
description: "Contains properties for the installation state of a mobile app for a device. This will be deprecated in May, 2023"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# mobileAppInstallStatus resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for the installation state of a mobile app for a device. This will be deprecated in May, 2023

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppInstallStatuses](../api/intune-apps-mobileappinstallstatus-list.md)|[mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md) collection|List properties and relationships of the [mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md) objects.|
|[Get mobileAppInstallStatus](../api/intune-apps-mobileappinstallstatus-get.md)|[mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md)|Read properties and relationships of the [mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md) object.|
|[Create mobileAppInstallStatus](../api/intune-apps-mobileappinstallstatus-create.md)|[mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md)|Create a new [mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md) object.|
|[Delete mobileAppInstallStatus](../api/intune-apps-mobileappinstallstatus-delete.md)|None|Deletes a [mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md).|
|[Update mobileAppInstallStatus](../api/intune-apps-mobileappinstallstatus-update.md)|[mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md)|Update the properties of a [mobileAppInstallStatus](../resources/intune-apps-mobileappinstallstatus.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|deviceName|String|Device name|
|deviceId|String|Device ID|
|lastSyncDateTime|DateTimeOffset|Last sync date time|
|mobileAppInstallStatusValue|[resultantAppState](../resources/intune-shared-resultantappstate.md)|The install state of the app. Possible values are: `installed`, `failed`, `notInstalled`, `uninstallFailed`, `pendingInstall`, `unknown`, `notApplicable`.|
|installState|[resultantAppState](../resources/intune-shared-resultantappstate.md)|The install state of the app. Possible values are: `installed`, `failed`, `notInstalled`, `uninstallFailed`, `pendingInstall`, `unknown`, `notApplicable`.|
|installStateDetail|[resultantAppStateDetail](../resources/intune-apps-resultantappstatedetail.md)|The install state detail of the app. Possible values are: `noAdditionalDetails`, `dependencyFailedToInstall`, `dependencyWithRequirementsNotMet`, `dependencyPendingReboot`, `dependencyWithAutoInstallDisabled`, `supersededAppUninstallFailed`, `supersededAppUninstallPendingReboot`, `removingSupersededApps`, `iosAppStoreUpdateFailedToInstall`, `vppAppHasUpdateAvailable`, `userRejectedUpdate`, `uninstallPendingReboot`, `supersedingAppsDetected`, `supersededAppsDetected`, `seeInstallErrorCode`, `autoInstallDisabled`, `managedAppNoLongerPresent`, `userRejectedInstall`, `userIsNotLoggedIntoAppStore`, `untargetedSupersedingAppsDetected`, `appRemovedBySupersedence`, `seeUninstallErrorCode`, `pendingReboot`, `installingDependencies`, `contentDownloaded`, `supersedingAppsNotApplicable`, `powerShellScriptRequirementNotMet`, `registryRequirementNotMet`, `fileSystemRequirementNotMet`, `platformNotApplicable`, `minimumCpuSpeedNotMet`, `minimumLogicalProcessorCountNotMet`, `minimumPhysicalMemoryNotMet`, `minimumOsVersionNotMet`, `minimumDiskSpaceNotMet`, `processorArchitectureNotApplicable`.|
|errorCode|Int32|The error code for install or uninstall failures.|
|osVersion|String|OS Version|
|osDescription|String|OS Description|
|userName|String|Device User Name|
|userPrincipalName|String|User Principal Name|
|displayVersion|String|Human readable version of the application|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|app|[mobileApp](../resources/intune-shared-mobileapp.md)|The navigation link to the mobile app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppInstallStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppInstallStatus",
  "id": "String (identifier)",
  "deviceName": "String",
  "deviceId": "String",
  "lastSyncDateTime": "String (timestamp)",
  "mobileAppInstallStatusValue": "String",
  "installState": "String",
  "installStateDetail": "String",
  "errorCode": 1024,
  "osVersion": "String",
  "osDescription": "String",
  "userName": "String",
  "userPrincipalName": "String",
  "displayVersion": "String"
}
```
