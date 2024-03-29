---
title: "winGetApp resource type"
description: "A MobileApp that is based on a referenced application in a WinGet repository."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# winGetApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A MobileApp that is based on a referenced application in a WinGet repository.


Inherits from [mobileApp](../resources/intune-apps-mobileapp.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List winGetApps](../api/intune-apps-wingetapp-list.md)|[winGetApp](../resources/intune-apps-wingetapp.md) collection|List properties and relationships of the [winGetApp](../resources/intune-apps-wingetapp.md) objects.|
|[Get winGetApp](../api/intune-apps-wingetapp-get.md)|[winGetApp](../resources/intune-apps-wingetapp.md)|Read properties and relationships of the [winGetApp](../resources/intune-apps-wingetapp.md) object.|
|[Create winGetApp](../api/intune-apps-wingetapp-create.md)|[winGetApp](../resources/intune-apps-wingetapp.md)|Create a new [winGetApp](../resources/intune-apps-wingetapp.md) object.|
|[Delete winGetApp](../api/intune-apps-wingetapp-delete.md)|None|Deletes a [winGetApp](../resources/intune-apps-wingetapp.md).|
|[Update winGetApp](../api/intune-apps-wingetapp-update.md)|[winGetApp](../resources/intune-apps-wingetapp.md)|Update the properties of a [winGetApp](../resources/intune-apps-wingetapp.md) object.|

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
|manifestHash|String|Hash of package metadata properties used to validate that the application matches the metadata in the source repository.|
|packageIdentifier|String|The PackageIdentifier from the WinGet source repository REST API. This also maps to the Id when using the WinGet client command line application. Required at creation time, cannot be modified on existing objects.|
|installExperience|[winGetAppInstallExperience](../resources/intune-apps-wingetappinstallexperience.md)|The install experience settings associated with this application, which are used to ensure the desired install experiences on the target device are taken into account. This includes the account type (System or User) that actions should be run as on target devices. Required at creation time.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|
|relationships|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|The set of direct relationships for this app. Inherited from [mobileApp](../resources/intune-apps-mobileapp.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.winGetApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.winGetApp",
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
  "manifestHash": "String",
  "packageIdentifier": "String",
  "installExperience": {
    "@odata.type": "microsoft.graph.winGetAppInstallExperience",
    "runAsAccount": "String"
  }
}
```
