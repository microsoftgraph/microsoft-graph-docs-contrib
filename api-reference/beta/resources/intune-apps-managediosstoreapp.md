---
title: "managedIOSStoreApp resource type"
description: "Contains properties and inherited properties for an iOS store app that you can manage with an Intune app protection policy."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# managedIOSStoreApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for an iOS store app that you can manage with an Intune app protection policy.


Inherits from [managedApp](../resources/intune-apps-managedapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List managedIOSStoreApps](../api/intune-apps-managediosstoreapp-list.md)|[managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md) collection|List properties and relationships of the [managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md) objects.|
|[Get managedIOSStoreApp](../api/intune-apps-managediosstoreapp-get.md)|[managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md)|Read properties and relationships of the [managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md) object.|
|[Create managedIOSStoreApp](../api/intune-apps-managediosstoreapp-create.md)|[managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md)|Create a new [managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md) object.|
|[Delete managedIOSStoreApp](../api/intune-apps-managediosstoreapp-delete.md)|None|Deletes a [managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md).|
|[Update managedIOSStoreApp](../api/intune-apps-managediosstoreapp-update.md)|[managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md)|Update the properties of a [managedIOSStoreApp](../resources/intune-apps-managediosstoreapp.md) object.|

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
|appAvailability|[managedAppAvailability](../resources/intune-apps-managedappavailability.md)|The Application's availability. This property is read-only. Inherited from [managedApp](../resources/intune-apps-managedapp.md). Possible values are: `global`, `lineOfBusiness`.|
|version|String|The Application's version. Inherited from [managedApp](../resources/intune-apps-managedapp.md)|
|bundleId|String|The app's Bundle ID.|
|appStoreUrl|String|The Apple AppStoreUrl.|
|applicableDeviceType|[iosDeviceType](../resources/intune-apps-iosdevicetype.md)|The iOS architecture for which this app can run on.|
|minimumSupportedOperatingSystem|[iosMinimumOperatingSystem](../resources/intune-apps-iosminimumoperatingsystem.md)|The value for the minimum supported operating system.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|
|relationships|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|The set of direct relationships for this app. Inherited from [mobileApp](../resources/intune-shared-mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedIOSStoreApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedIOSStoreApp",
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
  "appAvailability": "String",
  "version": "String",
  "bundleId": "String",
  "appStoreUrl": "String",
  "applicableDeviceType": {
    "@odata.type": "microsoft.graph.iosDeviceType",
    "iPad": true,
    "iPhoneAndIPod": true
  },
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.iosMinimumOperatingSystem",
    "v8_0": true,
    "v9_0": true,
    "v10_0": true,
    "v11_0": true,
    "v12_0": true,
    "v13_0": true,
    "v14_0": true,
    "v15_0": true,
    "v16_0": true,
    "v17_0": true,
    "v18_0": true
  }
}
```