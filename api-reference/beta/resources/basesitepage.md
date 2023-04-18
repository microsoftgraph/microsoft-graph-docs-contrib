---
title: BaseSitePage
description: This resource represents a page in the SitePages list.
author: Sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# baseSitePage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource represents a page in the site page library.
Inherits from [baseItem](../resources/baseitem.md).

## Methods

| Method                                               | Return type                                             | Description                                                                                  |
| :--------------------------------------------------- | :------------------------------------------------------ | :------------------------------------------------------------------------------------------- |
| [List baseSitePage](../api/baseSitePage-list.md)     | [baseSitePage](../resources/baseSitePage.md) collection | Get a list of the [baseSitePage](../resources/baseSitePage.md) objects and their properties. |
| [Get baseSitePage](../api/baseSitePage-get.md)       | [baseSitePage](../resources/sitepage.md)                | Read the properties and relationships of a [sitePage](../resources/sitepage.md) object.      |
| [Delete baseSitePage](../api/baseSitePage-delete.md) | None                                                    | Deletes a [baseSitePage](../resources/baseSitePage.md) object.                               |

## Properties

| Property             | Type                                                                 | Description                                                                                                                     |
| :------------------- | :------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------ |
| contentType          | [contentTypeInfo](../resources/contentTypeInfo.md)                   | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| createdBy            | [identitySet](../resources/identityset.md)                           | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| createdDateTime      | DateTimeOffset                                                       | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| description          | String                                                               | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| eTag                 | String                                                               | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| id                   | String                                                               | Inherited from [entity](../resources/entity.md).                                                                                |
| lastModifiedBy       | [identitySet](../resources/identityset.md)                           | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| lastModifiedDateTime | DateTimeOffset                                                       | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| name                 | String                                                               | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| pageLayout           | [pageLayoutType](../resources/basesitepage.md#pagelayouttype-values) | The name of the page layout of the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`. |
| parentReference      | [itemReference](../resources/itemreference.md)                       | Inherited from [baseItem](../resources/baseitem.md).                                                                            |
| publishingState      | [publicationFacet](../resources/publicationfacet.md)                 | The publishing status and the MM.mm version of the page.                                                                        |
| title                | String                                                               | Title of the sitePage.                                                                                                          |
| webUrl               | String                                                               | Inherited from [baseItem](../resources/baseitem.md).                                                                            |

### pageLayoutType values

| Value                | Description                                                     |
| -------------------- | --------------------------------------------------------------- |
| `microsoftReserved`  | The page is a special type, reserved for use by Microsoft only. |
| `article`            | The page is an article page.                                    |
| `home`               | The page is a home page.                                        |
| `unknownFutureValue` | Marker value for future compatibility.                          |

## Relationships

| Relationship       | Type                         | Description                                                                                                |
| :----------------- | :--------------------------- | :--------------------------------------------------------------------------------------------------------- |
| createdByUser      | [user](../resources/user.md) | Identity of the creator of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md)       |
| lastModifiedByUser | [user](../resources/user.md) | Identity of the last modifier of this item. Read-only. Inherited from [baseItem](../resources/baseitem.md) |

## JSON representation

The following is a JSON representation of the resource.

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
