---
title: "baseSitePage resource type"
description: "An abstract type that represents a baseSitePage in the site page library."
author: "Sangle7"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 12/03/2024
---

# baseSitePage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a page in the site page library.

Inherits from [baseItem](../resources/baseitem.md).

## Methods

| Method                                               | Return type                                             | Description                                                                                  |
| :--------------------------------------------------- | :------------------------------------------------------ | :------------------------------------------------------------------------------------------- |
| [List](../api/basesitepage-list.md)     | [baseSitePage](../resources/basesitepage.md) collection | Get the collection of [baseSitePage](../resources/basesitepage.md) objects from the site pages [list](../resources/list.md) in a [site](../resources/site.md). |
| [Get](../api/basesitepage-get.md)       | [baseSitePage](../resources/basesitepage.md)                | Get the metadata for a [baseSitePage](../resources/basesitepage.md) in the site pages [list](../resources/list.md) in a [site](../resources/site.md).      |
| [Delete](../api/basesitepage-delete.md) | None                                                    | Delete a [baseSitePage](../resources/basesitepage.md) object.                               |

## Properties

| Property             | Type                                                                 | Description                                                                                                                     |
| :------------------- | :------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| contentType          | [contentTypeInfo](../resources/contentTypeInfo.md)                   | The content type of this item. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| createdBy            | [identitySet](../resources/identityset.md)                           |  Identity of the creator of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| createdDateTime      | DateTimeOffset                                                       | The date and time the item was created. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| description          | String                                                               | The descriptive text for the item. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| eTag                 | String                                                               | ETag for the item. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| id                   | String                                                               | The unique identifier of the item. Inherited from [entity](../resources/entity.md).                                                                                |
| lastModifiedBy       | [identitySet](../resources/identityset.md)                           | The identity of the last modifier of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| lastModifiedDateTime | DateTimeOffset                                                       | The date and time the item was last modified. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| name                 | String                                                               | The name of the item. Inherited from [baseItem](../resources/baseitem.md).    |
| pageLayout           | [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values) | The name of the page layout of the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`, `newsLink`. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink`. |
| parentReference      | [itemReference](../resources/itemreference.md)                       | Parent information, if the item has a parent. Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| publishingState      | [publicationFacet](../resources/publicationfacet.md)                 | The publishing status and the MM.mm version of the page.                                                                        |
| title                | String                                                               | Title of the sitePage.                                                                                                          |
| webUrl               | String                                                               | URL that displays the resource in the browser. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                                                            |

### pageLayoutType values

| Value              | Description                                                     |
| ------------------ | --------------------------------------------------------------- |
| microsoftReserved  | The page is a special type reserved for Microsoft use only.     |
| article            | The page is an article page.                                    |
| home               | The page is a home page.                                        |
| unknownFutureValue | Marker value for future compatibility.                          |
| newsLink           | The page is a news link page that allows you to add a link to content from your site or another website. The linked content appears as a news post.|

## Relationships

| Relationship       | Type                         | Description                                                                                                |
| :----------------- | :--------------------------- | :--------------------------------------------------------------------------------------------------------- |
| createdByUser      | [user](../resources/user.md) | Identity of the creator of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md)       |
| lastModifiedByUser | [user](../resources/user.md) | Identity of the last modifier of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md) |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.baseSitePage",
  "baseType": "microsoft.graph.baseItem",
  "openType": true
}
-->

```json
{
  "@odata.type": "#microsoft.graph.baseSitePage",
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
  }
}
```
