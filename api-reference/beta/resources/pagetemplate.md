---
title: "pageTemplate resource type"
description: "Represents a page template in the templates folder."
author: Yadong1106
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# pageTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

It contains the title, layout, and a collection of [webPart](../resources/webpart.md)s.

Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods

| Method                                                                                           | Return type                                     | Description                                                                                                                         |
| :----------------------------------------------------------------------------------------------- | :---------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| [List pageTemplates](../api/pagetemplate-list.md)                                                | [pagetemplate](../resources/pagetemplate.md)    | Get a list of the [pagetemplate](../resources/pagetemplate.md) objects and their properties.                                        |
| [Create pageTemplate](../api/pagetemplate-create.md)                                             | [pagetemplate](../resources/pagetemplate.md)    | Create a new [pagetemplate](../resources/pagetemplate.md) object.                                                                   |
| [Get pageTemplate](../api/pagetemplate-get.md)                                                   | [pagetemplate](../resources/pagetemplate.md)    | Get a [pagetemplate](../resources/pagetemplate.md) object and properties.                                                           |
| [Update pageTemplate](../api/pagetemplate-update.md)                                             | [pagetemplate](../resources/pagetemplate.md)    | Update the properties of a [pagetemplate](../resources/pagetemplate.md) object.                                                     |
| [Delete pageTemplate](../api/pagetemplate-delete.md)                                             | None                                            | Deletes a [pagetemplate](../resources/pagetemplate.md) object.                                                                      |

## Properties

| Property             | Type                                                                   | Description                                                                                                                     |
| :------------------- | :--------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| contentType          | [contentTypeInfo](../resources/contentTypeInfo.md)                   | The content type of this item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| createdBy            | [identitySet](../resources/identityset.md)                           |  Identity of the creator of this item. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| createdDateTime      | DateTimeOffset                                                       | The date and time the item was created. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| description          | String                                                               | The descriptive text for the item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| eTag                 | String                                                               | ETag for the item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| id                   | String                                                               | The unique identifier of the item. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                                |
| lastModifiedBy       | [identitySet](../resources/identityset.md)                           | The identity of the last modifier of this item. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| lastModifiedDateTime | DateTimeOffset                                                       | The date and time the item was last modified. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                            |
| name                 | String                                                               | The name of the item. Inherited from [baseSitePage](../resources/basesitepage.md).    |
| pageLayout           | [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values)       | The name of the page layout of the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`. Inherited from [baseSitePage](../resources/basesitepage.md). |
| parentReference      | [itemReference](../resources/itemreference.md)                         | Parent information, if the item has a parent. Inherited from [baseSitePage](../resources/baseSitePage.md).                                                                            |
| publishingState      | [publicationFacet](../resources/publicationfacet.md)                   | The publishing status and the MM.mm version of the page. Inherited from [baseSitePage](../resources/basesitepage.md).                                                                       |
| thumbnailWebUrl      | String                                                                 | Url of the page template's thumbnail image                                                                                           |
| title                | String                                                                 | Title of the page template. Inherited from [baseSitePage](../resources/basesitepage.md). |
| titleArea            | [titleArea](../resources/titlearea.md)                                 | Title area on the SharePoint page.                                                                                              |
| webUrl               | String                                                                 | URL that displays the resource in the browser. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).                                                                            |

## Relationships

| Relationship       | Type                                          | Description                                                                                                        |
| :----------------- | :-------------------------------------------- | :----------------------------------------------------------------------------------------------------------------- |
| canvasLayout       | [canvasLayout](../resources/canvaslayout.md)  | Indicates the layout of the content in a given SharePoint page, including horizontal sections and vertical sections. |
| createdByUser      | [user](../resources/user.md)                  | Identity of the creator of this item. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).               |
| lastModifiedByUser | [user](../resources/user.md)                  | Identity of the last modifier of this item. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).         |
| webParts           | [webPart](../resources/webpart.md) collection | Collection of webparts on the SharePoint page.                                                                     |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pageTemplate",
  "baseType": "microsoft.graph.baseSitePage",
  "openType": true
}
-->

```json
{
  "@odata.type": "#microsoft.graph.pageTemplate",
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
  "publishingState": {
    "@odata.type": "microsoft.graph.publicationFacet"
  },
  "thumbnailWebUrl": "String",
  "titleArea": {
    "@odata.type": "microsoft.graph.titleArea"
  }
}
```
