---
title: "macOSPkgApp resource type"
description: "Contains properties and inherited properties for the MacOSPkgApp."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# macOSPkgApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for the MacOSPkgApp.


Inherits from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSPkgApps](../api/intune-apps-macospkgapp-list.md)|[macOSPkgApp](../resources/intune-apps-macospkgapp.md) collection|List properties and relationships of the [macOSPkgApp](../resources/intune-apps-macospkgapp.md) objects.|
|[Get macOSPkgApp](../api/intune-apps-macospkgapp-get.md)|[macOSPkgApp](../resources/intune-apps-macospkgapp.md)|Read properties and relationships of the [macOSPkgApp](../resources/intune-apps-macospkgapp.md) object.|
|[Create macOSPkgApp](../api/intune-apps-macospkgapp-create.md)|[macOSPkgApp](../resources/intune-apps-macospkgapp.md)|Create a new [macOSPkgApp](../resources/intune-apps-macospkgapp.md) object.|
|[Delete macOSPkgApp](../api/intune-apps-macospkgapp-delete.md)|None|Deletes a [macOSPkgApp](../resources/intune-apps-macospkgapp.md).|
|[Update macOSPkgApp](../api/intune-apps-macospkgapp-update.md)|[macOSPkgApp](../resources/intune-apps-macospkgapp.md)|Update the properties of a [macOSPkgApp](../resources/intune-apps-macospkgapp.md) object.|

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
|uploadState|Int32|The upload state. Possible values are: 0 - `Not Ready`, 1 - `Ready`, 2 - `Processing`. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|isAssigned|Boolean|The value indicating whether the app is assigned to at least one group. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|roleScopeTagIds|String collection|List of scope tag ids for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|dependentAppCount|Int32|The total number of dependencies the child app has. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|supersedingAppCount|Int32|The total number of apps this app directly or indirectly supersedes. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|supersededAppCount|Int32|The total number of apps this app is directly or indirectly superseded by. This property is read-only. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|primaryBundleId|String|The bundleId of the primary app in the PKG. This maps to the CFBundleIdentifier in the app's bundle configuration.|
|primaryBundleVersion|String|The version of the primary app in the PKG. This maps to the CFBundleShortVersion in the app's bundle configuration.|
|includedApps|[macOSIncludedApp](../resources/intune-apps-macosincludedapp.md) collection|The list of apps expected to be installed by the PKG. This collection can contain a maximum of 500 elements.|
|ignoreVersionDetection|Boolean|When TRUE, indicates that the app's version will NOT be used to detect if the app is installed on a device. When FALSE, indicates that the app's version will be used to detect if the app is installed on a device. Set this to true for apps that use a self update feature. The default value is FALSE.|
|minimumSupportedOperatingSystem|[macOSMinimumOperatingSystem](../resources/intune-apps-macosminimumoperatingsystem.md)|ComplexType macOSMinimumOperatingSystem that indicates the minimum operating system applicable for the application.|
|preInstallScript|[macOSAppScript](../resources/intune-apps-macosappscript.md)|ComplexType macOSAppScript the contains the post-install script for the app. This will execute on the macOS device after the app is installed.|
|postInstallScript|[macOSAppScript](../resources/intune-apps-macosappscript.md)|ComplexType macOSAppScript the contains the post-install script for the app. This will execute on the macOS device after the app is installed.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|relationships|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|The set of direct relationships for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune-apps-mobileappcontent.md) collection|The list of content versions for this app. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.macOSPkgApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSPkgApp",
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
  "uploadState": 1024,
  "publishingState": "String",
  "isAssigned": true,
  "roleScopeTagIds": [
    "String"
  ],
  "dependentAppCount": 1024,
  "supersedingAppCount": 1024,
  "supersededAppCount": 1024,
  "committedContentVersion": "String",
  "fileName": "String",
  "size": 1024,
  "primaryBundleId": "String",
  "primaryBundleVersion": "String",
  "includedApps": [
    {
      "@odata.type": "microsoft.graph.macOSIncludedApp",
      "bundleId": "String",
      "bundleVersion": "String"
    }
  ],
  "ignoreVersionDetection": true,
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.macOSMinimumOperatingSystem",
    "v10_7": true,
    "v10_8": true,
    "v10_9": true,
    "v10_10": true,
    "v10_11": true,
    "v10_12": true,
    "v10_13": true,
    "v10_14": true,
    "v10_15": true,
    "v11_0": true,
    "v12_0": true,
    "v13_0": true,
    "v14_0": true
  },
  "preInstallScript": {
    "@odata.type": "microsoft.graph.macOSAppScript",
    "scriptContent": "String"
  },
  "postInstallScript": {
    "@odata.type": "microsoft.graph.macOSAppScript",
    "scriptContent": "String"
  }
}
```
