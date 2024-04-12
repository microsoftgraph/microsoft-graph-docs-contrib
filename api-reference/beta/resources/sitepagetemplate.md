---
title: "sitePageTemplate resource type"
description: "Represents a page template in the templates folder."
author: Yadong1106
ms.localizationpriority: medium
doc_type: resourcePageType
---

# sitePageTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a page template in the templates folder.

In addition to other properties, a **sitePageTemplate** resource contains the title, layout, and a collection of [webPart](../resources/webpart.md) objects.

Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods

|Method|Return type|Description|
|:-----|:----------|:----------|
|[List sitePageTemplates](../api/sitepagetemplate-list.md)|[sitePageTemplate](../resources/sitepagetemplate.md)|Get a list of the [pageTemplate](../resources/sitepagetemplate.md) objects and their properties.|
|[Create sitePageTemplate](../api/sitepagetemplate-create.md)|[sitePageTemplate](../resources/sitepagetemplate.md)|Create a new [pageTemplate](../resources/sitepagetemplate.md) object.|
|[Get sitePageTemplate](../api/sitepagetemplate-get.md)|[sitePageTemplate](../resources/sitepagetemplate.md)|Get a [sitePageTemplate](../resources/sitepagetemplate.md) object and properties.|
|[Update sitePageTemplate](../api/sitepagetemplate-update.md)|[sitePageTemplate](../resources/sitepagetemplate.md)|Update the properties of a [pageTemplate](../resources/sitepagetemplate.md) object.|
|[Delete sitePageTemplate](../api/sitepagetemplate-delete.md)|None|Delete a [sitePageTemplate](../resources/sitepagetemplate.md) object.|

## Properties

|Property|Type|Description|
|:-----|:-----|:----------|
|contentType|[contentTypeInfo](../resources/contentTypeInfo.md)|The content type of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the creator of the page template. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|createdDateTime|DateTimeOffset|The date and time the page template was created. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|description|String|The descriptive text for the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|eTag|String|The eTag for the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|id|String|The unique identifier of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the last modifier of the page template. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time the page template was last modified. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|name|String|The name of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|pageLayout|[pageLayoutType](../resources/basesitepage.md#pagelayouttype-values)|The type of the page layout for the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`. Inherited from [baseSitePage](../resources/basesitepage.md).|
|parentReference|[itemReference](../resources/itemreference.md)|The parent information, if the page template has a parent. Inherited from [baseSitePage](../resources/baseSitePage.md).|
|publishingState|[publicationFacet](../resources/publicationfacet.md)|The publishing status and the MM.mm version of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|thumbnailWebUrl|String|The URL of the page template's thumbnail image|
|title|String|The title of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|titleArea|[titleArea](../resources/titlearea.md)|The title area on the SharePoint page template.|
|webUrl|String|The URL that displays the page template in the browser. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).|

## Relationships

|Relationship|Type|Description|
|:-----------|:---|:----------|
|canvasLayout|[canvasLayout](../resources/canvaslayout.md)|The layout indicates the layout of the content in a given SharePoint page template, including horizontal sections and vertical sections.|
|createdByUser|[user](../resources/user.md)|The identity of the user who created this site page template. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).|
|lastModifiedByUser|[user](../resources/user.md)|The identity of the last modifier of this item. Read-only. Inherited from [baseSitePage](../resources/baseSitePage.md).|
|webParts|[webPart](../resources/webpart.md) collection|Collection of web parts on the SharePoint page.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sitePageTemplate",
  "baseType": "microsoft.graph.baseSitePage",
  "openType": true
}
-->

```json
{
  "@odata.type": "#microsoft.graph.sitePageTemplate",
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
