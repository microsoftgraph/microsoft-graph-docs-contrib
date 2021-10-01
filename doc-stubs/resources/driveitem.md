---
title: "driveItem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# driveItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseItem](../resources/baseitem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List driveItems](../api/driveitem-list.md)|[driveItem](../resources/driveitem.md) collection|Get a list of the [driveItem](../resources/driveitem.md) objects and their properties.|
|[Create driveItem](../api/driveitem-create.md)|[driveItem](../resources/driveitem.md)|Create a new [driveItem](../resources/driveitem.md) object.|
|[Get driveItem](../api/driveitem-get.md)|[driveItem](../resources/driveitem.md)|Read the properties and relationships of a [driveItem](../resources/driveitem.md) object.|
|[Update driveItem](../api/driveitem-update.md)|[driveItem](../resources/driveitem.md)|Update the properties of a [driveItem](../resources/driveitem.md) object.|
|[Delete driveItem](../api/driveitem-delete.md)|None|Deletes a [driveItem](../resources/driveitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audio|[audio](../resources/audio.md)|**TODO: Add Description**|
|bundle|[bundle](../resources/bundle.md)|**TODO: Add Description**|
|content|Stream|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|cTag|String|**TODO: Add Description**|
|deleted|[deleted](../resources/deleted.md)|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|eTag|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|file|[file](../resources/file.md)|**TODO: Add Description**|
|fileSystemInfo|[fileSystemInfo](../resources/filesysteminfo.md)|**TODO: Add Description**|
|folder|[folder](../resources/folder.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|image|[image](../resources/image.md)|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|location|[geoCoordinates](../resources/geocoordinates.md)|**TODO: Add Description**|
|malware|[malware](../resources/malware.md)|**TODO: Add Description**|
|media|[media](../resources/media.md)|**TODO: Add Description**|
|name|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|package|[package](../resources/package.md)|**TODO: Add Description**|
|parentReference|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|pendingOperations|[pendingOperations](../resources/pendingoperations.md)|**TODO: Add Description**|
|photo|[photo](../resources/photo.md)|**TODO: Add Description**|
|publication|[publicationFacet](../resources/publicationfacet.md)|**TODO: Add Description**|
|remoteItem|[remoteItem](../resources/remoteitem.md)|**TODO: Add Description**|
|root|[root](../resources/root.md)|**TODO: Add Description**|
|searchResult|[searchResult](../resources/searchresult.md)|**TODO: Add Description**|
|shared|[shared](../resources/shared.md)|**TODO: Add Description**|
|sharepointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description**|
|size|Int64|**TODO: Add Description**|
|source|[driveItemSource](../resources/driveitemsource.md)|**TODO: Add Description**|
|specialFolder|[specialFolder](../resources/specialfolder.md)|**TODO: Add Description**|
|video|[video](../resources/video.md)|**TODO: Add Description**|
|webDavUrl|String|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|activities|[itemActivityOLD](../resources/itemactivityold.md) collection|**TODO: Add Description**|
|analytics|[itemAnalytics](../resources/itemanalytics.md)|**TODO: Add Description**|
|children|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|
|createdByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|document|[document](../resources/document.md)|**TODO: Add Description**|
|items|[driveItem](../resources/driveitem.md) collection|**TODO: Add Description**|
|lastModifiedByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|listItem|[listItem](../resources/listitem.md)|**TODO: Add Description**|
|permissions|[permission](../resources/permission.md) collection|**TODO: Add Description**|
|presentation|[presentation](../resources/presentation.md)|**TODO: Add Description**|
|subscriptions|[subscription](../resources/subscription.md) collection|**TODO: Add Description**|
|thumbnails|[thumbnailSet](../resources/thumbnailset.md) collection|**TODO: Add Description**|
|versions|[driveItemVersion](../resources/driveitemversion.md) collection|**TODO: Add Description**|
|workbook|[workbook](../resources/workbook.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveItem",
  "baseType": "microsoft.graph.baseItem",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveItem",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "eTag": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "parentReference": {
    "@odata.type": "microsoft.graph.itemReference"
  },
  "webUrl": "String",
  "audio": {
    "@odata.type": "microsoft.graph.audio"
  },
  "bundle": {
    "@odata.type": "microsoft.graph.bundle"
  },
  "content": "Stream",
  "cTag": "String",
  "deleted": {
    "@odata.type": "microsoft.graph.deleted"
  },
  "file": {
    "@odata.type": "microsoft.graph.file"
  },
  "fileSystemInfo": {
    "@odata.type": "microsoft.graph.fileSystemInfo"
  },
  "folder": {
    "@odata.type": "microsoft.graph.folder"
  },
  "image": {
    "@odata.type": "microsoft.graph.image"
  },
  "location": {
    "@odata.type": "microsoft.graph.geoCoordinates"
  },
  "malware": {
    "@odata.type": "microsoft.graph.malware"
  },
  "media": {
    "@odata.type": "microsoft.graph.media"
  },
  "package": {
    "@odata.type": "microsoft.graph.package"
  },
  "pendingOperations": {
    "@odata.type": "microsoft.graph.pendingOperations"
  },
  "photo": {
    "@odata.type": "microsoft.graph.photo"
  },
  "publication": {
    "@odata.type": "microsoft.graph.publicationFacet"
  },
  "remoteItem": {
    "@odata.type": "microsoft.graph.remoteItem"
  },
  "root": {
    "@odata.type": "microsoft.graph.root"
  },
  "searchResult": {
    "@odata.type": "microsoft.graph.searchResult"
  },
  "shared": {
    "@odata.type": "microsoft.graph.shared"
  },
  "sharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "size": "Integer",
  "source": {
    "@odata.type": "microsoft.graph.driveItemSource"
  },
  "specialFolder": {
    "@odata.type": "microsoft.graph.specialFolder"
  },
  "video": {
    "@odata.type": "microsoft.graph.video"
  },
  "webDavUrl": "String"
}
```

