---
author: JeremyKelley
title: listItem resource
description: Represents an item in a sharepoint list.
ms.localizationpriority: high
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# listItem resource

Namespace: microsoft.graph

Represents an item in a SharePoint [list][].

All items in a SharePoint document library can be represented as a **listItem** or [driveItem][] resource.

Column values in the list are available through the `fieldValueSet` dictionary.

## Methods

The following methods are available for **listItem** resources.
All examples are relative to a **[list][]**: `https://graph.microsoft.com/v1.0/sites/{site-id}/lists/{list-id}`.

| Method                                                                   | Return Type                        | Description                                                               |
|:-------------------------------------------------------------------------|:-----------------------------------|:--------------------------------------------------------------------------|
| [Get][]                                                                  | listItem                           | Get an item in a list.                                                    |
| [Get column values][Get]                                                 | listItem                           | Get column values from listItem.                                          |
| [Get analytics][]                                                        | [itemAnalytics][]                  | Get analytics for this resource.                                          |
| [Get activities by interval][]                                           | [itemActivityStat][]               | Get a collection of itemActivityStats within the specified time interval. |
| [Create][]                                                               | listItem                           | Create a new listItem in a list.                                          |
| [Delete][]                                                               | No Content                         | Removes an item from a list.                                              |
| [Update][]                                                               | [fieldValueSet][]                  | Update the properties on a listItem.                                      |
| [Update column values][Update]                                           | [fieldValueSet][]                  | Update column values on a listItem.                                       |
| [List documentSetVersions](../api/listitem-list-documentsetversions.md)  | [documentSetVersion][] collection  | Get a list of the versions of a document set item in a list.              |
| [Create documentSetVersion](../api/listitem-post-documentsetversions.md) | [documentSetVersion][]             | Create a new version of a document set item in a list.                    |
| [Restore documentSetVersion](../api/documentsetversion-restore.md)       | No Content                         | Restore the document set item to a specific version.                      |

[Get]: ../api/listitem-get.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivitystat-getactivitybyinterval.md
[Create]: ../api/listitem-create.md
[Delete]: ../api/listitem-delete.md
[Update]: ../api/listitem-update.md

[itemActivityStat]: itemactivitystat.md
[fieldValueSet]: fieldvalueset.md
[documentSetVersion]: documentsetversion.md

## Properties

The **listItem** resource has the following properties.

| Property    | Type                | Description                        |
|:------------|:--------------------|:-----------------------------------|
| contentType | [contentTypeInfo][] | The content type of this list item |

The following properties are inherited from **[baseItem][]**.

| Property             | Type              | Description                                                              |
|:---------------------|:------------------|:-------------------------------------------------------------------------|
| createdBy            | [identitySet][]   | Identity of the creator of this item. Read-only.                         |
| createdDateTime      | DateTimeOffset    | The date and time the item was created. Read-only.                       |
| description          | string            | The descriptive text for the item.                                       |
| eTag                 | string            | ETag for the item. Read-only.                                            |
| id                   | string            | The unique identifier of the item. Read-only.                            |
| lastModifiedBy       | [identitySet][]   | Identity of the last modifier of this item. Read-only.                   |
| lastModifiedDateTime | DateTimeOffset    | The date and time the item was last modified. Read-only.                 |
| name                 | string            | The name / title of the item.                                            |
| parentReference      | [itemReference][] | Parent information, if the item has a parent. Read-write.                |
| sharepointIds        | [sharepointIds][] | Returns identifiers useful for SharePoint REST compatibility. Read-only. |
| webUrl               | string (url)      | URL that displays the item in the browser. Read-only.                    |

## Relationships

 The **listItem** resource has the following relationships to other resources.

| Relationship        | Type                                                                | Description                                                                                        |
|:--------------------|:--------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------|
| activities          | [itemActivity][] collection                                         | The list of recent activities that took place on this item.                                        |
| analytics           | [itemAnalytics][] resource                                          | Analytics about the view activities that took place on this item.                                  |
| documentSetVersions | [documentSetVersion](../resources/documentsetversion.md) collection | Version information for a document set version created by a user.                                  |
| driveItem           | [driveItem][]                                                       | For document libraries, the **driveItem** relationship exposes the listItem as a **[driveItem][]** |
| fields              | [fieldValueSet][]                                                   | The values of the columns set on this list item.                                                   |
| versions            | [listItemVersion][] collection                                      | The list of previous versions of the list item.                                                    |

[baseItem]: baseitem.md
[contentTypeInfo]: contenttypeinfo.md
[driveItem]: driveitem.md
[fieldValueSet]: fieldvalueset.md
[identitySet]: identityset.md
[itemActivity]: itemactivity.md
[itemAnalytics]: itemanalytics.md
[itemReference]: itemreference.md
[list]: list.md
[listItemVersion]: listitemversion.md
[sharepointIds]: sharepointids.md

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.listItem"
}-->

```json
{
  "contentType": { "@odata.type": "microsoft.graph.contentTypeInfo" },
  "fields": { "@odata.type": "microsoft.graph.fieldValueSet" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },

  /* relationships */
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "analytics": { "@odata.type": "microsoft.graph.itemAnalytics" },
  "documentSetVersions": [{"@odata.type": "microsoft.graph.documentSetVersion"}],
  "driveItem": { "@odata.type": "microsoft.graph.driveItem" },
  "versions": [{"@odata.type": "microsoft.graph.listItemVersion"}],

  /* inherited from baseItem */
  "id": "string",
  "name": "name of resource",
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "timestamp",
  "description": "description of resource",
  "eTag": "string",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "timestamp",
  "parentReference": { "@odata.type": "microsoft.graph.itemReference"},
  "webUrl": "url"
}
```

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/listItem",
  "tocBookmarks": {
    "ListItem": "#"
  }
} -->

