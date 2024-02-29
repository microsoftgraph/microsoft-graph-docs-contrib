---
title: "macOSWebClip resource type"
description: "Contains properties and inherited properties for macOS web apps."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSWebClip resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for macOS web apps.


Inherits from [mobileApp](../resources/intune-shared-mobileapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List macOSWebClips](../api/intune-apps-macoswebclip-list.md)|[macOSWebClip](../resources/intune-apps-macoswebclip.md) collection|List properties and relationships of the [macOSWebClip](../resources/intune-apps-macoswebclip.md) objects.|
|[Get macOSWebClip](../api/intune-apps-macoswebclip-get.md)|[macOSWebClip](../resources/intune-apps-macoswebclip.md)|Read properties and relationships of the [macOSWebClip](../resources/intune-apps-macoswebclip.md) object.|
|[Create macOSWebClip](../api/intune-apps-macoswebclip-create.md)|[macOSWebClip](../resources/intune-apps-macoswebclip.md)|Create a new [macOSWebClip](../resources/intune-apps-macoswebclip.md) object.|
|[Delete macOSWebClip](../api/intune-apps-macoswebclip-delete.md)|None|Deletes a [macOSWebClip](../resources/intune-apps-macoswebclip.md).|
|[Update macOSWebClip](../api/intune-apps-macoswebclip-update.md)|[macOSWebClip](../resources/intune-apps-macoswebclip.md)|Update the properties of a [macOSWebClip](../resources/intune-apps-macoswebclip.md) object.|

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
|appUrl|String|The web app URL starting with http:// or https://, such as https://learn.microsoft.com/mem/.|
|fullScreenEnabled|Boolean|Whether or not to open the web clip as a full-screen web app. Defaults to false. If TRUE, opens the web clip as a full-screen web app. If FALSE, the web clip opens inside of another app.|
|preComposedIconEnabled|Boolean|Whether or not the icon for the app is precomosed. Defaults to false. If TRUE, prevents SpringBoard from adding "shine" to the icon. If FALSE, SpringBoard can add "shine".|

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
  "@odata.type": "microsoft.graph.macOSWebClip"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSWebClip",
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
  "appUrl": "String",
  "fullScreenEnabled": true,
  "preComposedIconEnabled": true
}
```
