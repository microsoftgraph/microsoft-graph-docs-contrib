---
title: "pageTemplate resource type"
description: "Represents a page template in the templates folder."
author: Yadong1106
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 09/16/2024
---

# pageTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a page template in the templates folder.

In addition to other properties, a **pageTemplate** resource contains the title, layout, and a collection of [webPart](../resources/webpart.md) objects.

Inherits from [baseSitePage](../resources/basesitepage.md).

## Methods

|Method|Return type|Description|
|:-----|:----------|:----------|
|[List](../api/pagetemplate-list.md)|[pageTemplate](../resources/pagetemplate.md)|Get a list of the [pageTemplate](../resources/pagetemplate.md) objects and their properties.|
|[Create](../api/pagetemplate-create.md)|[pageTemplate](../resources/pagetemplate.md)|Create a new [pageTemplate](../resources/pagetemplate.md) object.|
|[Get](../api/pagetemplate-get.md)|[pageTemplate](../resources/pagetemplate.md)|Get a [pageTemplate](../resources/pagetemplate.md) object and properties.|
|[Update](../api/pagetemplate-update.md)|[pageTemplate](../resources/pagetemplate.md)|Update the properties of a [pageTemplate](../resources/pagetemplate.md) object.|
|[Delete](../api/pagetemplate-delete.md)|None|Delete a [pageTemplate](../resources/pagetemplate.md) object.|

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
|pageLayout|[pageLayoutType](../resources/basesitepage.md#pagelayouttype-values)|The type of the page layout for the page. The possible values are: `microsoftReserved`, `article`, `home`, `unknownFutureValue`, `newsLink`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `newsLink`. Inherited from [baseSitePage](../resources/basesitepage.md).|
|parentReference|[itemReference](../resources/itemreference.md)|The parent information, if the page template has a parent. Inherited from [baseSitePage](../resources/basesitepage.md).|
|publishingState|[publicationFacet](../resources/publicationfacet.md)|The publishing status and the MM.mm version of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|thumbnailWebUrl|String|The URL of the page template's thumbnail image|
|title|String|The title of the page template. Inherited from [baseSitePage](../resources/basesitepage.md).|
|titleArea|[titleArea](../resources/titlearea.md)|The title area on the SharePoint page template.|
|webUrl|String|The URL that displays the page template in the browser. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|

## Relationships

|Relationship|Type|Description|
|:-----------|:---|:----------|
|canvasLayout|[canvasLayout](../resources/canvaslayout.md)|The layout of the content in a given SharePoint page template, including horizontal sections and vertical sections.|
|createdByUser|[user](../resources/user.md)|The identity of the user who created this site page template. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|lastModifiedByUser|[user](../resources/user.md)|The identity of the last modifier of this item. Read-only. Inherited from [baseSitePage](../resources/basesitepage.md).|
|webParts|[webPart](../resources/webpart.md) collection|The collection of web parts on the SharePoint page.|

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
