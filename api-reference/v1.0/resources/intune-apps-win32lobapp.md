---
title: "win32LobApp resource type"
description: "Contains properties and inherited properties for Win32 apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# win32LobApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for Win32 apps.


Inherits from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List win32LobApps](../api/intune-apps-win32lobapp-list.md)|[win32LobApp](../resources/intune-apps-win32lobapp.md) collection|List properties and relationships of the [win32LobApp](../resources/intune-apps-win32lobapp.md) objects.|
|[Get win32LobApp](../api/intune-apps-win32lobapp-get.md)|[win32LobApp](../resources/intune-apps-win32lobapp.md)|Read properties and relationships of the [win32LobApp](../resources/intune-apps-win32lobapp.md) object.|
|[Create win32LobApp](../api/intune-apps-win32lobapp-create.md)|[win32LobApp](../resources/intune-apps-win32lobapp.md)|Create a new [win32LobApp](../resources/intune-apps-win32lobapp.md) object.|
|[Delete win32LobApp](../api/intune-apps-win32lobapp-delete.md)|None|Deletes a [win32LobApp](../resources/intune-apps-win32lobapp.md).|
|[Update win32LobApp](../api/intune-apps-win32lobapp-update.md)|[win32LobApp](../resources/intune-apps-win32lobapp.md)|Update the properties of a [win32LobApp](../resources/intune-apps-win32lobapp.md) object.|
|[enableApplicableArchitectures action](../api/intune-apps-win32lobapp-enableapplicablearchitectures.md)|None||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|installCommandLine|String|Indicates the command line to install this app. Used to install the Win32 app. Example: `msiexec /i "Orca.Msi" /qn`.|
|uninstallCommandLine|String|Indicates the command line to uninstall this app. Used to uninstall the app. Example: `msiexec /x "{85F4CBCB-9BBC-4B50-A7D8-E1106771498D}" /qn`.|
|applicableArchitectures|[windowsArchitecture](../resources/intune-apps-windowsarchitecture.md)|Indicates the Windows architecture(s) this app should be installed on. The app will be treated as not applicable for devices with architectures not matching the selected value. When a non-null value is provided for the `allowedArchitectures` property, the value of the `applicableArchitectures` property is set to `none`. Default value is `none`. Possible values are: `none`, `x86`, `x64`. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|allowedArchitectures|[windowsArchitecture](../resources/intune-apps-windowsarchitecture.md)|Indicates the Windows architecture(s) this app should be installed on. The app will be treated as not applicable for devices with architectures not matching the selected value. When a non-null value is provided for the `allowedArchitectures` property, the value of the `applicableArchitectures` property is set to `none`. Possible values are: `null`, `x86`, `x64`, `arm64`. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`.|
|minimumFreeDiskSpaceInMB|Int32|Indicates the value for the minimum free disk space which is required to install this app. Allowed range from `0` to `driver's maximum available free space`.|
|minimumMemoryInMB|Int32|Indicates the value for the minimum physical memory which is required to install this app. Allowed range from `0` to `total physical memory from WMI helper`.|
|minimumNumberOfProcessors|Int32|Indicates the value for the minimum number of processors which is required to install this app. Minimum value is `0`.|
|minimumCpuSpeedInMHz|Int32|Indicates the value for the minimum CPU speed which is required to install this app. Allowed range from `0` to `clock speed from WMI helper`.|
|rules|[win32LobAppRule](../resources/intune-apps-win32lobapprule.md) collection|Indicates the detection and requirement rules for this app. Possible values are: `Win32LobAppFileSystemRule, Win32LobAppPowerShellScriptRule, Win32LobAppProductCodeRule, Win32LobAppRegistryRule`.|
|installExperience|[win32LobAppInstallExperience](../resources/intune-apps-win32lobappinstallexperience.md)|Indicates the install experience for this app.|
|returnCodes|[win32LobAppReturnCode](../resources/intune-apps-win32lobappreturncode.md) collection|Indicates the return codes for post installation behavior.|
|msiInformation|[win32LobAppMsiInformation](../resources/intune-apps-win32lobappmsiinformation.md)|Indicates the MSI details if this Win32 app is an MSI app.|
|setupFilePath|String|Indicates the relative path of the setup file in the encrypted Win32LobApp package. Example: `Intel-SA-00075 Detection and Mitigation Tool.msi`.|
|minimumSupportedWindowsRelease|String|Indicates the value for the minimum supported windows release. Example: `Windows11_23H2`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune-apps-mobileappcontent.md) collection|The list of content versions for this app. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.win32LobApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.win32LobApp",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "largeIcon": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "isFeatured": true,
  "privacyInformationUrl": "String",
  "informationUrl": "String",
  "owner": "String",
  "developer": "String",
  "notes": "String",
  "publishingState": "String",
  "committedContentVersion": "String",
  "fileName": "String",
  "size": 1024,
  "installCommandLine": "String",
  "uninstallCommandLine": "String",
  "applicableArchitectures": "String",
  "allowedArchitectures": "String",
  "minimumFreeDiskSpaceInMB": 1024,
  "minimumMemoryInMB": 1024,
  "minimumNumberOfProcessors": 1024,
  "minimumCpuSpeedInMHz": 1024,
  "rules": [
    {
      "@odata.type": "microsoft.graph.win32LobAppRegistryRule",
      "ruleType": "String",
      "check32BitOn64System": true,
      "keyPath": "String",
      "valueName": "String",
      "operationType": "String",
      "operator": "String",
      "comparisonValue": "String"
    }
  ],
  "installExperience": {
    "@odata.type": "microsoft.graph.win32LobAppInstallExperience",
    "runAsAccount": "String",
    "deviceRestartBehavior": "String"
  },
  "returnCodes": [
    {
      "@odata.type": "microsoft.graph.win32LobAppReturnCode",
      "returnCode": 1024,
      "type": "String"
    }
  ],
  "msiInformation": {
    "@odata.type": "microsoft.graph.win32LobAppMsiInformation",
    "productCode": "String",
    "productVersion": "String",
    "upgradeCode": "String",
    "requiresReboot": true,
    "packageType": "String",
    "productName": "String",
    "publisher": "String"
  },
  "setupFilePath": "String",
  "minimumSupportedWindowsRelease": "String"
}
```