---
title: "windowsUniversalAppX resource type"
description: "Contains properties and inherited properties for Windows Universal AppX Line Of Business apps. Inherits from `mobileLobApp`."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsUniversalAppX resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for Windows Universal AppX Line Of Business apps. Inherits from `mobileLobApp`.


Inherits from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windowsUniversalAppXs](../api/intune-apps-windowsuniversalappx-list.md)|[windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) collection|List properties and relationships of the [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) objects.|
|[Get windowsUniversalAppX](../api/intune-apps-windowsuniversalappx-get.md)|[windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md)|Read properties and relationships of the [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) object.|
|[Create windowsUniversalAppX](../api/intune-apps-windowsuniversalappx-create.md)|[windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md)|Create a new [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) object.|
|[Delete windowsUniversalAppX](../api/intune-apps-windowsuniversalappx-delete.md)|None|Deletes a [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md).|
|[Update windowsUniversalAppX](../api/intune-apps-windowsuniversalappx-update.md)|[windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md)|Update the properties of a [windowsUniversalAppX](../resources/intune-apps-windowsuniversalappx.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|uploadState|Int32|The upload state. Possible values are: 0 - `Not Ready`, 1 - `Ready`, 2 - `Processing`. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|isAssigned|Boolean|The value indicating whether the app is assigned to at least one group. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|roleScopeTagIds|String collection|List of scope tag ids for this mobile app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|dependentAppCount|Int32|The total number of dependencies the child app has. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|supersedingAppCount|Int32|The total number of apps this app directly or indirectly supersedes. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|supersededAppCount|Int32|The total number of apps this app is directly or indirectly superseded by. This property is read-only. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|applicableArchitectures|[windowsArchitecture](../resources/intune-apps-windowsarchitecture.md)|The Windows architecture(s) for which this app can run on. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`; default value is `none`. Possible values are: `none`, `x86`, `x64`, `arm`, `neutral`, `arm64`.|
|applicableDeviceTypes|[windowsDeviceType](../resources/intune-apps-windowsdevicetype.md)|The Windows device type(s) for which this app can run on. Possible values are: `none`, `desktop`, `mobile`, `holographic`, `team`; default value is `none`. Possible values are: `none`, `desktop`, `mobile`, `holographic`, `team`, `unknownFutureValue`.|
|identityName|String|The Identity Name of the app, parsed from the appx file when it is uploaded through the Intune MEM console. For example: "Contoso.DemoApp".|
|identityPublisherHash|String|The Identity Publisher Hash of the app, parsed from the appx file when it is uploaded through the Intune MEM console. For example: "AB82CD0XYZ".|
|identityResourceIdentifier|String|The Identity Resource Identifier of the app, parsed from the appx file when it is uploaded through the Intune MEM console. For example: "TestResourceId".|
|isBundle|Boolean|Whether or not the app is a bundle. If TRUE, app is a bundle; if FALSE, app is not a bundle.|
|minimumSupportedOperatingSystem|[windowsMinimumOperatingSystem](../resources/intune-apps-windowsminimumoperatingsystem.md)|The value for the minimum applicable Windows operating system.|
|identityVersion|String|The Identity Version of the app, parsed from the appx file when it is uploaded through the Intune MEM console.  For example: "1.0.0.0".|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|relationships|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|The set of direct relationships for this app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune-apps-mobileappcontent.md) collection|The list of content versions for this app. This property is read-only. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|committedContainedApps|[mobileContainedApp](../resources/intune-apps-mobilecontainedapp.md) collection|The collection of contained apps in the committed mobileAppContent of a windowsUniversalAppX app. This property is read-only.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUniversalAppX"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUniversalAppX",
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
  "applicableArchitectures": "String",
  "applicableDeviceTypes": "String",
  "identityName": "String",
  "identityPublisherHash": "String",
  "identityResourceIdentifier": "String",
  "isBundle": true,
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.windowsMinimumOperatingSystem",
    "v8_0": true,
    "v8_1": true,
    "v10_0": true,
    "v10_1607": true,
    "v10_1703": true,
    "v10_1709": true,
    "v10_1803": true,
    "v10_1809": true,
    "v10_1903": true,
    "v10_1909": true,
    "v10_2004": true,
    "v10_2H20": true,
    "v10_21H1": true
  },
  "identityVersion": "String"
}
```