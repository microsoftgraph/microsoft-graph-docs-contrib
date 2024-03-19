---
title: "mobileApp resource type"
description: "An abstract class containing the base properties for Intune mobile apps. Note: Listing mobile apps with `$expand=assignments` has been deprecated. Instead get the list of apps without the `$expand` query on `assignments`. Then, perform the expansion on individual applications."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# mobileApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An abstract class containing the base properties for Intune mobile apps. Note: Listing mobile apps with `$expand=assignments` has been deprecated. Instead get the list of apps without the `$expand` query on `assignments`. Then, perform the expansion on individual applications.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileApps](../api/intune-apps-mobileapp-list.md)|[mobileApp](../resources/intune-apps-mobileapp.md) collection|List properties and relationships of the [mobileApp](../resources/intune-apps-mobileapp.md) objects.|
|[Get mobileApp](../api/intune-apps-mobileapp-get.md)|[mobileApp](../resources/intune-apps-mobileapp.md)|Read properties and relationships of the [mobileApp](../resources/intune-apps-mobileapp.md) object.|
|[assign action](../api/intune-apps-mobileapp-assign.md)|None||
|[validateXml action](../api/intune-apps-mobileapp-validatexml.md)|String||
|[convertMobileAppCatalogPackageToMobileApp function](../api/intune-apps-mobileapp-convertmobileappcatalogpackagetomobileapp.md)|[mobileApp](../resources/intune-apps-mobileapp.md)||
|[createCatalogApp action](../api/intune-apps-mobileapp-createcatalogapp.md)|[mobileApp](../resources/intune-apps-mobileapp.md)||
|[convertFromMobileAppCatalogPackage function](../api/intune-apps-mobileapp-convertfrommobileappcatalogpackage.md)|[mobileApp](../resources/intune-apps-mobileapp.md)||
|[updateRelationships action](../api/intune-apps-mobileapp-updaterelationships.md)|None||
|[getPublishingConstraints function](../api/intune-apps-mobileapp-getpublishingconstraints.md)|[mobileAppPublishingConstraints](../resources/intune-apps-mobileapppublishingconstraints.md)||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. This property is read-only.|
|displayName|String|The admin provided or imported title of the app.|
|description|String|The description of the app.|
|publisher|String|The publisher of the app.|
|largeIcon|[mimeContent](../resources/intune-shared-mimecontent.md)|The large icon, to be displayed in the app details and used for upload of the icon.|
|createdDateTime|DateTimeOffset|The date and time the app was created. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time the app was last modified. This property is read-only.|
|isFeatured|Boolean|The value indicating whether the app is marked as featured by the admin.|
|privacyInformationUrl|String|The privacy statement Url.|
|informationUrl|String|The more information Url.|
|owner|String|The owner of the app.|
|developer|String|The developer of the app.|
|notes|String|Notes for the app.|
|uploadState|Int32|The upload state. Possible values are: 0 - `Not Ready`, 1 - `Ready`, 2 - `Processing`. This property is read-only.|
|publishingState|[mobileAppPublishingState](../resources/intune-apps-mobileapppublishingstate.md)|The publishing state for the app. The app cannot be assigned unless the app is published. This property is read-only. Possible values are: `notPublished`, `processing`, `published`.|
|isAssigned|Boolean|The value indicating whether the app is assigned to at least one group. This property is read-only.|
|roleScopeTagIds|String collection|List of scope tag ids for this mobile app.|
|dependentAppCount|Int32|The total number of dependencies the child app has. This property is read-only.|
|supersedingAppCount|Int32|The total number of apps this app directly or indirectly supersedes. This property is read-only.|
|supersededAppCount|Int32|The total number of apps this app is directly or indirectly superseded by. This property is read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|categories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The list of categories for this app.|
|assignments|[mobileAppAssignment](../resources/intune-apps-mobileappassignment.md) collection|The list of group assignments for this mobile app.|
|relationships|[mobileAppRelationship](../resources/intune-apps-mobileapprelationship.md) collection|The set of direct relationships for this app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileApp",
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
  "supersededAppCount": 1024
}
```
