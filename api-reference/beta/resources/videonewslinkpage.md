---
title: videoNewsLinkPage resource type
description: Represents a Video News Link page in the site's pages list
author: kevklam
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
---

# videoNewsLinkPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Video News Link page in the site's pages [list](../resources/list.md).

Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/videonewslinkpage-list.md)|[videoNewsLinkPage](../resources/videonewslinkpage.md) collection|Get a list of the [videoNewsLinkPage](../resources/videonewslinkpage.md) objects and their properties.|
|[Get](../api/videonewslinkpage-get.md)|[videoNewsLinkPage](../resources/videonewslinkpage.md)|Read the properties and relationships of a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|
|[Update](../api/videonewslinkpage-update.md)|[videoNewsLinkPage](../resources/videonewslinkpage.md)|Update the properties of a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|
|[Delete](../api/basesitepage-delete.md)|None|Delete a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|
|[Publish](../api/videonewslinkpage-publish.md)|None|Publish a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bannerImageWebUrl|String|A link to the banner image for the [videoNewsLinkPage](../resources/videonewslinkpage.md).|
|createdBy|[identitySet](../resources/intune-identityset.md)| Identity of the creator of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md).|
|createdDateTime|DateTimeOffset|The date and time the item was created. Read-only. Inherited from [baseItem](../resources/baseitem.md).|
|description|String|The descriptive text for the item. Inherited from [baseItem](../resources/baseitem.md).|
|eTag|String|ETag for the item. Inherited from [baseItem](../resources/baseitem.md).|
|id|String|The unique identifier of the item. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|Identity of the last modifier of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time the item was last modified. Read-only. Inherited from [baseItem](../resources/baseitem.md).|
|name|String|The name of the item. Inherited from [baseItem](../resources/baseitem.md).|
|newsSharepointIds|[sharepointIds](../resources/sharepointids.md)|The Sharepoint Ids of the referenced news article, if it is recognized to be a Sharepoint resource. Read-only.|
|newsWebUrl|String|The URL of the video content referenced by the [videoNewsLinkPage](../resources/videonewslinkpage.md). Must refer to video content in the same tenant.|
|pageLayout|pageLayoutType|The name of the page layout of the page. Inherited from [baseSitePage](../resources/basesitepage.md).The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`, `newsLink`, `videoNewsLink`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink` , `videoNewsLink`.|
|parentReference|[itemReference](../resources/itemreference.md)|Parent information, if the item has a parent. Inherited from [baseItem](../resources/baseitem.md).|
|publishingState|[publicationFacet](../resources/publicationfacet.md)|The publishing status and the MM.mm version of the page. Inherited from [baseSitePage](../resources/basesitepage.md).|
|title|String|Title of the [videoNewsLinkPage](../resources/videonewslinkpage.md). Inherited from [baseSitePage](../resources/basesitepage.md).|
|videoDuration|Duration|Duration of the referenced video.|
|webUrl|String|URL that displays the resource in the browser. Read-only. Inherited from [baseItem](../resources/baseitem.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdByUser|[user](../resources/user.md)|Identity of the creator of this item. Read-only. Inherited from [microsoft.graph.baseItem](../resources/baseitem.md)|
|lastModifiedByUser|[user](../resources/user.md)|Identity of the creator of this item. Read-only. Inherited from [microsoft.graph.baseItem](../resources/baseitem.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.videoNewsLinkPage",
  "baseType": "microsoft.graph.baseSitePage",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.videoNewsLinkPage",
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
  "pageLayout": "String",
  "publishingState": {
    "@odata.type": "microsoft.graph.publicationFacet"
  },
  "title": "String",
  "newsWebUrl": "String",
  "newsSharepointIds": {
    "@odata.type": "microsoft.graph.sharepointIds"
  },
  "bannerImageWebUrl": "String",
  "videoDuration": "String (duration)"
}
```