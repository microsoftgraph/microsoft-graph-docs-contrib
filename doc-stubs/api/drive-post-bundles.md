---
title: "Create bundles"
description: "Create a new driveItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bundles
Namespace: microsoft.graph

Create a new driveItem object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /workbooks
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [driveItem](../resources/driveitem.md) object.

The following table shows the properties that are required when you create the [driveItem](../resources/driveitem.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|description|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|eTag|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|name|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|parentReference|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|webUrl|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md)|
|audio|[audio](../resources/audio.md)|**TODO: Add Description**|
|bundle|[bundle](../resources/bundle.md)|**TODO: Add Description**|
|content|Stream|**TODO: Add Description**|
|cTag|String|**TODO: Add Description**|
|deleted|[deleted](../resources/deleted.md)|**TODO: Add Description**|
|file|[file](../resources/file.md)|**TODO: Add Description**|
|fileSystemInfo|[fileSystemInfo](../resources/filesysteminfo.md)|**TODO: Add Description**|
|folder|[folder](../resources/folder.md)|**TODO: Add Description**|
|image|[image](../resources/image.md)|**TODO: Add Description**|
|location|[geoCoordinates](../resources/geocoordinates.md)|**TODO: Add Description**|
|package|[package](../resources/package.md)|**TODO: Add Description**|
|pendingOperations|[pendingOperations](../resources/pendingoperations.md)|**TODO: Add Description**|
|photo|[photo](../resources/photo.md)|**TODO: Add Description**|
|publication|[publicationFacet](../resources/publicationfacet.md)|**TODO: Add Description**|
|remoteItem|[remoteItem](../resources/remoteitem.md)|**TODO: Add Description**|
|root|[root](../resources/root.md)|**TODO: Add Description**|
|searchResult|[searchResult](../resources/searchresult.md)|**TODO: Add Description**|
|shared|[shared](../resources/shared.md)|**TODO: Add Description**|
|sharepointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description**|
|size|Int64|**TODO: Add Description**|
|specialFolder|[specialFolder](../resources/specialfolder.md)|**TODO: Add Description**|
|video|[video](../resources/video.md)|**TODO: Add Description**|
|webDavUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [driveItem](../resources/driveitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_driveitem_from_workbooks"
}
-->
``` http
POST https://graph.microsoft.com/beta/workbooks
Content-Type: application/json
Content-length: 1746

{
  "@odata.type": "#microsoft.graph.driveItem",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "description": "String",
  "eTag": "String",
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
  "specialFolder": {
    "@odata.type": "microsoft.graph.specialFolder"
  },
  "video": {
    "@odata.type": "microsoft.graph.video"
  },
  "webDavUrl": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveItem"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.driveItem",
  "id": "e70e4590-4590-e70e-9045-0ee790450ee7",
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
  "specialFolder": {
    "@odata.type": "microsoft.graph.specialFolder"
  },
  "video": {
    "@odata.type": "microsoft.graph.video"
  },
  "webDavUrl": "String"
}
```

