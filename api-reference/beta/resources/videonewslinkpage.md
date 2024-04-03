---
title: "videoNewsLinkPage resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# videoNewsLinkPage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/videonewslinkpage-list.md)|[videoNewsLinkPage](../resources/videonewslinkpage.md) collection|Get a list of the [videoNewsLinkPage](../resources/videonewslinkpage.md) objects and their properties.|
|[Get](../api/videonewslinkpage-get.md)|[videoNewsLinkPage](../resources/videonewslinkpage.md)|Read the properties and relationships of a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|
|[Update](../api/videonewslinkpage-update.md)|[videoNewsLinkPage](../resources/videonewslinkpage.md)|Update the properties of a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|
|[Delete](../api/videonewslinkpage-delete.md)|None|Delete a [videoNewsLinkPage](../resources/videonewslinkpage.md) object.|
|[publish](../api/videonewslinkpage-publish.md)|None|**TODO: Add Description**|
|[List user](../api/videonewslinkpage-list-createdbyuser.md)|[user](../resources/user.md) collection|Get the user resources from the createdByUser navigation property.|
|[Add user](../api/videonewslinkpage-post-createdbyuser.md)|[user](../resources/user.md)|Add createdByUser by posting to the createdByUser collection.|
|[Remove user](../api/videonewslinkpage-delete-createdbyuser.md)|None|Remove a [user](../resources/user.md) object.|
|[List user](../api/videonewslinkpage-list-lastmodifiedbyuser.md)|[user](../resources/user.md) collection|Get the user resources from the lastModifiedByUser navigation property.|
|[Add user](../api/videonewslinkpage-post-lastmodifiedbyuser.md)|[user](../resources/user.md)|Add lastModifiedByUser by posting to the lastModifiedByUser collection.|
|[Remove user](../api/videonewslinkpage-delete-lastmodifiedbyuser.md)|None|Remove a [user](../resources/user.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bannerImageWebUrl|String|**TODO: Add Description**|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|description|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|eTag|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|name|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|newsSharepointIds|[sharepointIds](../resources/sharepointids.md)|**TODO: Add Description**|
|newsWebUrl|String|**TODO: Add Description**|
|pageLayout|pageLayoutType|**TODO: Add Description** Inherited from [baseSitePage](../resources/basesitepage.md).The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`, `newsLink`, `videoNewsLink`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink` , `videoNewsLink`.|
|parentReference|[itemReference](../resources/itemreference.md)|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|
|publishingState|[publicationFacet](../resources/publicationfacet.md)|**TODO: Add Description** Inherited from [baseSitePage](../resources/basesitepage.md).|
|title|String|**TODO: Add Description** Inherited from [baseSitePage](../resources/basesitepage.md).|
|videoDuration|Duration|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description** Inherited from [baseItem](../resources/baseitem.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [microsoft.graph.baseItem](../resources/baseitem.md)|
|lastModifiedByUser|[user](../resources/user.md)|**TODO: Add Description** Inherited from [microsoft.graph.baseItem](../resources/baseitem.md)|

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

