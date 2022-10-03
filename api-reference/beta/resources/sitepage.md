---
title: SitePage
description: This resource represents a page in the SitePages list.
author: Sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# sitePage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents a page in the SitePages [list](../resources/list.md).
It contains the title, layout, and a collection of [webPart](../resources/webpart.md)s.

Inherits from [baseItem](../resources/baseitem.md).

## Methods

| Method                                                                                           | Return type                                     | Description                                                                                                                         |
| :----------------------------------------------------------------------------------------------- | :---------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| [List sitePages](../api/sitepage-list.md)                                                        | [sitePage](../resources/sitepage.md) collection | Get a list of the [sitePage](../resources/sitepage.md) objects and their properties.                                                |
| [Create sitePage](../api/sitepage-create.md)                                                     | [sitePage](../resources/sitepage.md)            | Create a new [sitePage](../resources/sitepage.md) object.                                                                           |
| [Get sitePage](../api/sitepage-get.md)                                                           | [sitePage](../resources/sitepage.md)            | Read the properties and relationships of a [sitePage](../resources/sitepage.md) object.                                             |
| [Update sitePage](../api/sitepage-update.md)                                                     | [sitePage](../resources/sitepage.md)            | Update the properties of a [sitePage](../resources/sitepage.md) object.                                                             |
| [Delete sitePage](../api/sitepage-delete.md)                                                     | None                                            | Deletes a [sitePage](../resources/sitepage.md) object.                                                                              |
| [Publish sitePage](../api/sitepage-publish.md)                                                   | None                                            | Publish a [sitePage](../resources/sitepage.md) object.                                                                              |
| [Get a collection of WebParts by position information](../api/sitepage-getwebpartsbyposition.md) | [webpart](../resources/webpart.md) collection   | Get a collection of [WebPart](../resources/webpart.md) by providing [webPartPosition](../resources/webpartposition.md) information. |

## Properties

| Property             | Type                                                                   | Description                                                                                                                     |
| :------------------- | :--------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| contentType          | [contentTypeInfo](../resources/contentTypeInfo.md)                     | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| createdBy            | [identitySet](../resources/identityset.md)                             | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| createdDateTime      | DateTimeOffset                                                         | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| description          | String                                                                 | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| eTag                 | String                                                                 | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| id                   | String                                                                 | Inherited from [entity](../resources/entity.md).                                                                                |
| lastModifiedBy       | [identitySet](../resources/identityset.md)                             | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| lastModifiedDateTime | DateTimeOffset                                                         | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| name                 | String                                                                 | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| pageLayout           | [pageLayoutType](../resources/sitepage.md#pagelayouttype-values)       | The name of the page layout of the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`. |
| parentReference      | [itemReference](../resources/itemreference.md)                         | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| promotionKind        | [pagePromotionType](../resources/sitepage.md#pagepromotiontype-values) | Indicates the promotion kind of the sitePage. The possible values are: `microsoftReserved`, `page`, `newsPost`, `unknownFutureValue`.                                                                                    |
| publishingState      | [publicationFacet](../resources/publicationfacet.md)                   | The publishing status and the MM.mm version of the page.                                                                        |
| reactions            | [reactionsFacet](../resources/reactionsfacet.md)                       | Reactions information for the page.                                                                                             |
| showComments         | Boolean                                                                | Determines whether or not to show comments at the bottom of the page.                                                 |
| showRecommendedPages | Boolean                                                                | Determines whether or not to show recommended pages at the bottom of the page.                                        |
| thumbnailWebUrl      | String                                                                 | Url of the sitePage's thumbnail image                                                                                           |
| title                | String                                                                 | Title of the sitePage.                                                                                                          |
| titleArea            | [titleArea](../resources/titlearea.md)                                 | Title area on the SharePoint page.                                                                                              |
| webUrl               | String                                                                 | Inherited from [baseItem](../resources/baseitem.md).                                                                            |

### pageLayoutType values

| Value                | Description                                                                                                                                                                |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `microsoftReserved`  | The page is a special type, reserved for use by Microsoft only. This value cannot be used when creating the page with [Create sitePage](../api/sitepage-create.md) method. |
| `article`            | The page is an article page.                                                                                                                                               |
| `home`               | The page is a home page.                                                                                                                                                   |
| `unknownFutureValue` | Marker value for future compatibility.                                                                                                                                     |

### pagePromotionType values

| Value                | Description                                                                                                                                                                |
| -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `microsoftReserved`  | The page is a special type, reserved for use by Microsoft only. This value cannot be used when creating the page with [Create sitePage](../api/sitepage-create.md) method. |
| `page`               | The page is promoted as a normal page                                                                                                                                      |
| `newsPost`           | The page is promoted as a news post                                                                                                                                        |
| `unknownFutureValue` | Marker value for future compatibility.                                                                                                                                     |

## Relationships

| Relationship       | Type                                          | Description                                                                                                        |
| :----------------- | :-------------------------------------------- | :----------------------------------------------------------------------------------------------------------------- |
| canvasLayout       | [canvasLayout](../resources/canvaslayout.md)  | Indicates the layout of the content in a given SharePoint page, including horizontal sections and vertical section |
| createdByUser      | [user](../resources/user.md)                  | Identity of the creator of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md)               |
| lastModifiedByUser | [user](../resources/user.md)                  | Identity of the last modifier of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md)         |
| webParts           | [webPart](../resources/webpart.md) collection | Collection of webparts on the SharePoint page                                                                      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sitePage",
  "baseType": "microsoft.graph.baseItem",
  "openType": true
}
-->

```json
{
  "@odata.type": "#microsoft.graph.sitePage",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "contentType": {
    "@odata.type": "microsoft.graph.contentTypeInfo"
  },
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
  "title": "String",
  "pageLayout": "String",
  "promotionKind": "String",
  "publishingState": {
    "@odata.type": "microsoft.graph.publicationFacet"
  },
  "reactions": {
    "@odata.type": "microsoft.graph.reactionsFacet"
  },
  "showComments": "Boolean",
  "showRecommendedPages": "Boolean",
  "thumbnailWebUrl": "String",
  "titleArea": {
    "@odata.type": "microsoft.graph.titleArea"
  }
}
```
