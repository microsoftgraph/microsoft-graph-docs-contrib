---
title: "iosiPadOSWebClip resource type"
description: "Contains properties and inherited properties for iOS web apps."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosiPadOSWebClip resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties and inherited properties for iOS web apps.


Inherits from [mobileApp](../resources/intune-apps-mobileapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosiPadOSWebClips](../api/intune-apps-iosipadoswebclip-list.md)|[iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md) collection|List properties and relationships of the [iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md) objects.|
|[Get iosiPadOSWebClip](../api/intune-apps-iosipadoswebclip-get.md)|[iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md)|Read properties and relationships of the [iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md) object.|
|[Create iosiPadOSWebClip](../api/intune-apps-iosipadoswebclip-create.md)|[iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md)|Create a new [iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md) object.|
|[Delete iosiPadOSWebClip](../api/intune-apps-iosipadoswebclip-delete.md)|None|Deletes a [iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md).|
|[Update iosiPadOSWebClip](../api/intune-apps-iosipadoswebclip-update.md)|[iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md)|Update the properties of a [iosiPadOSWebClip](../resources/intune-apps-iosipadoswebclip.md) object.|

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
|appUrl|String|Indicates iOS/iPadOS web clip app URL. Example: "https://www.contoso.com"|
|useManagedBrowser|Boolean|Whether or not to use managed browser. When TRUE, the app will be required to be opened in Microsoft Edge. When FALSE, the app will not be required to be opened in Microsoft Edge. By default, this property is set to FALSE.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosiPadOSWebClip"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosiPadOSWebClip",
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
  "appUrl": "String",
  "useManagedBrowser": true
}
```
