---
title: "androidLobApp resource type"
description: "Contains properties and inherited properties for Android Line Of Business apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# androidLobApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for Android Line Of Business apps.


Inherits from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List androidLobApps](../api/intune-apps-androidlobapp-list.md)|[androidLobApp](../resources/intune-apps-androidlobapp.md) collection|List properties and relationships of the [androidLobApp](../resources/intune-apps-androidlobapp.md) objects.|
|[Get androidLobApp](../api/intune-apps-androidlobapp-get.md)|[androidLobApp](../resources/intune-apps-androidlobapp.md)|Read properties and relationships of the [androidLobApp](../resources/intune-apps-androidlobapp.md) object.|
|[Create androidLobApp](../api/intune-apps-androidlobapp-create.md)|[androidLobApp](../resources/intune-apps-androidlobapp.md)|Create a new [androidLobApp](../resources/intune-apps-androidlobapp.md) object.|
|[Delete androidLobApp](../api/intune-apps-androidlobapp-delete.md)|None|Deletes a [androidLobApp](../resources/intune-apps-androidlobapp.md).|
|[Update androidLobApp](../api/intune-apps-androidlobapp-update.md)|[androidLobApp](../resources/intune-apps-androidlobapp.md)|Update the properties of a [androidLobApp](../resources/intune-apps-androidlobapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|displayName|String|The admin provided or imported title of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|description|String|The description of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publisher|String|The publisher of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|createdDateTime|DateTimeOffset|The date and time the app was created. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|informationUrl|String|The more information Url. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|owner|String|The owner of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|developer|String|The developer of the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|notes|String|Notes for the app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md). Possible values are: `notPublished`, `processing`, `published`.|
|committedContentVersion|String|The internal committed content version. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|fileName|String|The name of the main Lob application file. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|size|Int64|The total size, including all uploaded files. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|
|packageId|String|The package identifier.|
|minimumSupportedOperatingSystem|[androidMinimumOperatingSystem](../resources/intune-apps-androidminimumoperatingsystem.md)|The value for the minimum applicable operating system.|
|versionName|String|The version name of Android Line of Business (LoB) app.|
|versionCode|String|The version code of Android Line of Business (LoB) app.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|contentVersions|[mobileAppContent](../resources/intune-apps-mobileappcontent.md) collection|The list of content versions for this app. Inherited from [mobileLobApp](../resources/intune-apps-mobilelobapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.androidLobApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidLobApp",
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
  "packageId": "String",
  "minimumSupportedOperatingSystem": {
    "@odata.type": "microsoft.graph.androidMinimumOperatingSystem",
    "v4_0": true,
    "v4_0_3": true,
    "v4_1": true,
    "v4_2": true,
    "v4_3": true,
    "v4_4": true,
    "v5_0": true,
    "v5_1": true,
    "v6_0": true,
    "v7_0": true,
    "v7_1": true,
    "v8_0": true,
    "v8_1": true,
    "v9_0": true,
    "v10_0": true,
    "v11_0": true
  },
  "versionName": "String",
  "versionCode": "String"
}
```
