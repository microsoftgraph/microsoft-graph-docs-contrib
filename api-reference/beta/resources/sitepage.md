---
title: "sitePage resource type"
description: Represents a site page in the sitePages list.
author: Sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# sitePage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents a page in the sitePages [list](../resources/list.md).
It contains the title, layout, and a collection of [webPart](../resources/webpart.md)s.

Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods

| Method                                                                                           | Return type                                     | Description                                                                                                                         |
| :----------------------------------------------------------------------------------------------- | :---------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| [List sitePages](../api/sitepage-list.md)                                                        | [sitePage](../resources/sitepage.md) collection | Get a list of the [sitePage](../resources/sitepage.md) objects and their properties.                                                |
| [Create sitePage](../api/sitepage-create.md)                                                     | [sitePage](../resources/sitepage.md)            | Create a new [sitePage](../resources/sitepage.md) object.                                                                           |
| [Get sitePage](../api/sitepage-get.md)                                                           | [sitePage](../resources/sitepage.md)            | Read the properties and relationships of a [sitePage](../resources/sitepage.md) object.                                             |
| [Update sitePage](../api/sitepage-update.md)                                                     | [sitePage](../resources/sitepage.md)            | Update the properties of a [sitePage](../resources/sitepage.md) object.                                                             |
| [Delete sitePage](../api/basesitepage-delete.md)                                                     | None                                            | Deletes a [sitePage](../resources/sitepage.md) object.                                                                              |
| [Publish sitePage](../api/sitepage-publish.md)                                                   | None                                            | Publish a [sitePage](../resources/sitepage.md) object.                                                                              |
| [Get a collection of WebParts by position information](../api/sitepage-getwebpartsbyposition.md) | [webpart](../resources/webpart.md) collection   | Get a collection of [WebPart](../resources/webpart.md) by providing [webPartPosition](../resources/webpartposition.md) information. |

## Properties

| Property             | Type                                                                   | Description                                                                                                                     |
| :------------------- | :--------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| contentType          | [contentTypeInfo](../resources/contentTypeInfo.md)                   | The content type of this item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| createdBy            | [identitySet](../resources/identityset.md)                           |  Identity of the creator of this item. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| createdDateTime      | DateTimeOffset                                                       | The date and time the item was created. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| description          | String                                                               | The descriptive text for the item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| eTag                 | String                                                               | ETag for the item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| id                   | String                                                               | The unique identifier of the item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                                |
| lastModifiedBy       | [identitySet](../resources/identityset.md)                           | TIdentity of the last modifier of this item. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| lastModifiedDateTime | DateTimeOffset                                                       | The date and time the item was last modified. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| name                 | String                                                               | The name of the item. Inherited from [baseSitePage](../resources/basesitepage.md).    |
| pageLayout           | [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values)       | The name of the page layout of the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`. Inherited from [baseSitePage](../resources/basesitepage.md). |
| parentReference      | [itemReference](../resources/itemreference.md)                         | Parent information, if the item has a parent. Inherited from [baseSitePage](../resources/baseSitePage.md).                                                                            |
| promotionKind        | [pagePromotionType](../resources/sitepage.md#pagepromotiontype-values) | Indicates the promotion kind of the sitePage. The possible values are: `microsoftReserved`, `page`, `newsPost`, `unknownFutureValue`.                                                                                    |
| publishingState      | [publicationFacet](../resources/publicationfacet.md)                   | The publishing status and the MM.mm version of the page.  Inherited from [baseSitePage](../resources/basesitepage.md).                                                                       |
| reactions            | [reactionsFacet](../resources/reactionsfacet.md)                       | Reactions information for the page.                                                                                             |
| showComments         | Boolean                                                                | Determines whether or not to show comments at the bottom of the page.                                                 |
| showRecommendedPages | Boolean                                                                | Determines whether or not to show recommended pages at the bottom of the page.                                        |
| thumbnailWebUrl      | String                                                                 | Url of the sitePage's thumbnail image                                                                                           |
| title                | String                                                                 | Title of the sitePage.  Inherited from [baseSitePage](../resources/basesitepage.md). |
| titleArea            | [titleArea](../resources/titlearea.md)                                 | Title area on the SharePoint page.                                                                                              |
| webUrl               | String                                                                 | URL that displays the resource in the browser. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).                                                                            |

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
| canvasLayout       | [canvasLayout](../resources/canvaslayout.md)  | Indicates the layout of the content in a given SharePoint page, including horizontal sections and vertical sections. |
| createdByUser      | [user](../resources/user.md)                  | Identity of the creator of this item. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).               |
| lastModifiedByUser | [user](../resources/user.md)                  | Identity of the last modifier of this item. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).         |
| webParts           | [webPart](../resources/webpart.md) collection | Collection of webparts on the SharePoint page.                                                                     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sitePage",
  "baseType": "microsoft.graph.baseSitePage",
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
