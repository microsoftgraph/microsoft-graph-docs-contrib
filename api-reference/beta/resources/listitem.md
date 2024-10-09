---
author: "spgraph-docs-team"
description: "Represents an item in a SharePoint list."
title: listItem resource type
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# listItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an item in a SharePoint [list][].

All items in a SharePoint document library can be represented as a **listItem** or [driveItem][] resource.

Column values in the list are available through the `fieldValueSet` dictionary.

## Methods

The following tasks are available for **listItem** resources.
All examples are relative to a **[list][]**; for example, `https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}`.

| Method                                                                   | Return Type                        | Description                                                               |
|:-------------------------------------------------------------------------|:-----------------------------------|:--------------------------------------------------------------------------|
| [Create][]                                                               | listItem                           | Create a new listItem in a list.                                          |
| [Get][]                                                                  | listItem                           | Get an item in a list.                                                    |
| [Update][]                                                               | [fieldValueSet][]                  | Update the properties on a listItem.                                      |
| [Delete][]                                                               | No Content                         | Removes an item from a list.                                              |
| [Get analytics][]                                                        | [itemAnalytics][]                  | Get analytics for this resource.                                          |
| [Get column values][Get]                                                 | listItem                           | Get column values from listItem.                                          |
| [Update column values][Update]                                           | [fieldValueSet][]                  | Update column values on a listItem.                                       |
| [List document set version](../api/listitem-list-documentsetversions.md)  | [documentSetVersion][] collection  | Get a list of the versions of a document set item in a list.              |
| [Create document set version](../api/listitem-post-documentsetversions.md) | [documentSetVersion][]             | Create a new version of a document set item in a list.                    |
| [Restore document set version](../api/documentsetversion-restore.md)       | No Content                         | Restore the document set item to a specific version.                      |
| [Get delta](../api/listitem-delta.md) | [listItem](../resources/listitem.md) collection | Get newly created, updated, or deleted [list items](../resources/listitem.md) without having to perform a full read of the entire items collection. |
| [List permissions](../api/listitem-list-permissions.md)| [permission](../resources/permission.md) |Get a list of the [permission](../resources/permission.md) objects associated with a [listItem](../resources/listitem.md).|
| [Create permission](../api/listitem-post-permissions.md)| [permission](../resources/permission.md) |Create a new [permission](../resources/permission.md) object on a [listItem](../resources/listitem.md).|
| [Get permission](../api/listitem-get-permissions.md)| [permission](../resources/permission.md) |Get a list of the [permission](../resources/permission.md) objects associated with a [listItem](../resources/listitem.md).|
| [Update permission](../api/listitem-update-permissions.md)| [permission](../resources/permission.md) |Update a [permission](../resources/permission.md) object on a [listItem](../resources/listitem.md).|
| [Delete permission](../api/listitem-delete-permissions.md)| None |Delete a [permission](../resources/permission.md) object on a [listItem](../resources/listitem.md).|

[Get]: ../api/listitem-get.md
[Get analytics]: ../api/itemanalytics-get.md
[Create]: ../api/listitem-create.md
[Delete]: ../api/listitem-delete.md
[Update]: ../api/listitem-update.md
[itemActivityStat]: itemactivitystat.md
[fieldValueSet]: fieldvalueset.md
[documentSetVersion]: documentsetversion.md

## Properties

The **listItem** resource has the following properties.

| Property    | Type                | Description                        |
| :---------- | :------------------ | :--------------------------------- |
| contentType | [contentTypeInfo][] | The content type of this list item |

The following properties are inherited from **[baseItem][]**.

| Property name        | Type              | Description                                                              |
| :------------------- | :---------------- | :----------------------------------------------------------------------- |
| id                   | string            | The unique identifier of the item. Read-only.                            |
| name                 | string            | The name / title of the item.                                            |
| createdBy            | [identitySet][]   | Identity of the creator of this item. Read-only.                         |
| createdDateTime      | DateTimeOffset    | The date and time the item was created. Read-only.                       |
| description          | string            | The descriptive text for the item.                                       |
| eTag                 | string            | ETag for the item. Read-only.                                            |
| lastModifiedBy       | [identitySet][]   | Identity of the last modifier of this item. Read-only.                   |
| lastModifiedDateTime | DateTimeOffset    | The date and time the item was last modified. Read-only.                 |
| parentReference      | [itemReference][] | Parent information, if the item has a parent. Read-write.                |
| sharepointIds        | [sharepointIds][] | Returns identifiers useful for SharePoint REST compatibility. Read-only. |
| webUrl               | string (url)      | URL that displays the item in the browser. Read-only.                    |

## Relationships

 The **listItem** resource has the following relationships to other resources.

| Relationship | Type                           | Description                                                                                        |
| :----------- | :----------------------------- | :------------------------------------------------------------------------------------------------- |
| activities   | [itemActivity][] collection    | The list of recent activities that took place on this item.                                        |
| analytics    | [itemAnalytics][] resource     | Analytics about the view activities that took place on this item.|
|documentSetVersions|[documentSetVersion](../resources/documentsetversion.md) collection| Version information for a document set version created by a user.|
| driveItem    | [driveItem][]                  | For document libraries, the **driveItem** relationship exposes the listItem as a **[driveItem][]** |
| fields       | [fieldValueSet][]              | The values of the columns set on this list item.                                                   |
| permissions  | [permission](permission.md) collection | The set of permissions for the item. Read-only. Nullable.                                          |
| versions     | [listItemVersion][] collection | The list of previous versions of the list item.                                                    |

## JSON representation

The following JSON representation shows the resource type.

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

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ListItem",
  "tocBookmarks": {
    "ListItem": "#"
  },
  "suppressions": []
}
-->
