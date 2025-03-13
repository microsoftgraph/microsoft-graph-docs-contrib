---
author: "spgraph-docs-team"
description: "Represents a list in a site."
title: list resource type
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# list resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a list in a [site](site.md). This resource contains the top level properties of the list, including template and field definitions.

## Methods

| Method                                                     | Return Type                                                                     | Description                                                                                                                      |
|:-----------------------------------------------------------|:--------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [Create](../api/list-create.md)                       | [list](../resources/list.md)                                                    | Create a new **list** in a **site**.                                                                                             |
| [Get](../api/list-get.md)                             | [list](../resources/list.md)                                                    | Get the metadata for a **list**.                                                                                                 |
| [Get items](../api/listitem-list.md)            | [listItem](../resources/listitem.md) collection                                 | Get the collection of [listItems]( ../resources/listitem.md) in a **list**.                                                      |
| [Get lists in a site](../api/list-list.md)                 | [list](../resources/list.md) collection                                         | Get the collection of **lists** in a [site](site.md).                                                                            |
| [Get recent activities](../api/activities-list.md)         | [itemActivity](../resources/itemactivity.md) collection                         | List the recent [activities](../resources/itemactivity.md) that took place on an item or under a hierarchy.                      |
| [Create item](../api/listitem-create.md)              | [listItem](../resources/listitem.md)                                            | Create a new [listItem]( ../resources/listitem.md) in a **list**.                                                                |
| [Update item](../api/listitem-update.md)              | [listItem](../resources/listitem.md)                                            | Update the properties on a [listItem]( ../resources/listitem.md).                                                                |
| [Delete item](../api/listitem-delete.md)              | None                                                                            | Delete a [listItem]( ../resources/listitem.md) from a **list**.                                                                  |
| [Get websocket endpoint](../api/subscriptions-socketio.md) | [subscription](../resources/subscription.md)                                    | Get near-real-time change notifications for a [drive](../resources/drive.md) and **list** using [socket.io](https://socket.io/). |
| [List operations in a list](../api/list-list-operations.md)          | [richLongRunningOperation](../resources/richlongrunningoperation.md) collection | Get a list of [rich long-running operations](../resources/richlongrunningoperation.md) associated with a **list**.               |
| [List content types](../api/list-list-contenttypes.md)     | [contentType](../resources/contenttype.md) collection                           | Get the collection of [contentType](../resources/contenttype.md) resources in a **list**.                                        |
| [Add copy to list](../api/contenttype-addcopy.md) | [contentType](../resources/contenttype.md)                             | Add a copy of a [contentType](../resources/contenttype.md) from a [site](site.md) to a **list**.                                 |
| [List columns](../api/list-list-columns.md)                | [columnDefinition](../resources/columndefinition.md) collection                 | Get the collection of columns, represented as [columnDefinition](../resources/columndefinition.md) objects, in a **list**.       |
| [Create column](../api/list-post-columns.md)               | [columnDefinition](../resources/columndefinition.md)                            | Create a column for a **list** with a request that specifies a [columnDefinition](../resources/columndefinition.md).             |
| [List permissions](../api/list-list-permissions.md)| [permission](../resources/permission.md) |Get a list of the [permission](../resources/permission.md) objects associated with a [list](../resources/list.md).|
| [Create permission](../api/list-list-permissions.md)| [permission](../resources/permission.md) |Get a list of the [permission](../resources/permission.md) objects associated with a [list](../resources/list.md).|
| [Get permission](../api/list-post-permissions.md)| [permission](../resources/permission.md) |Create a new [permission](../resources/permission.md) object on a [list](../resources/list.md).|
| [Update permission](../api/list-update-permissions.md)| [permission](../resources/permission.md) |Update a [permission](../resources/permission.md) object on a [list](../resources/list.md).|
| [Delete permission](../api/list-delete-permissions.md)| None |Delete a [permission](../resources/permission.md) object on a [list](../resources/list.md).|

## Properties

| Property             | Type                              | Description                                                                                           |
|:---------------------|:----------------------------------|:------------------------------------------------------------------------------------------------------|
| createdBy            | [identitySet](identityset.md)     | Identity of the creator of this item. Read-only. Inherited from [baseItem](baseitem.md).              |
| createdDateTime      | DateTimeOffset                    | The date and time when the item was created. Read-only. Inherited from [baseItem](baseitem.md).       |
| description          | String                            | The descriptive text for the item. Inherited from [baseItem](baseitem.md).                            |
| displayName          | String                            | The displayable title of the list.                                                                    |
| eTag                 | String                            | ETag for the item. Inherited from [baseItem](baseitem.md).                                            |
| id                   | String                            | The unique identifier of the item. Read-only. Inherited from [baseItem](baseitem.md).                 |
| lastModifiedBy       | [identitySet](identityset.md)     | Identity of the last modifier of this item. Read-only. Inherited from [baseItem](baseitem.md).        |
| lastModifiedDateTime | DateTimeOffset                    | The date and time when the item was last modified. Read-only. Inherited from [baseItem](baseitem.md). |
| list                 | [listInfo](listinfo.md)           | Contains more details about the list.                                                                 |
| name                 | String                            | The name of the item. Inherited from [baseItem](baseitem.md).                                         |
| parentReference      | [itemReference](itemreference.md) | Parent information if the item has a parent. Read-write. Inherited from [baseItem](baseitem.md).      |
| sharepointIds        | [sharepointIds](sharepointids.md) | Returns identifiers useful for SharePoint REST compatibility. Read-only.                              |
| system               | [systemFacet](systemfacet.md)     | If present, indicates that the list is system-managed. Read-only.                                     |
| webUrl               | String                            | URL that displays the item in the browser. Read-only. Inherited from [baseItem](baseitem.md).         |

## Relationships

| Relationship  | Type                                                                            | Description                                                                                                            |
|:--------------|:--------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------|
| activities    | [itemActivity](itemactivity.md) collection                                      | The recent activities that took place within this list.                                                                |
| columns       | [columnDefinition](columndefinition.md) collection                              | The collection of field definitions for this list.                                                                     |
| contentTypes  | [contentType](contenttype.md) collection                                        | The collection of content types present in this list.                                                                  |
| drive         | [drive](drive.md)                                                               | Allows access to the list as a **drive** resource with [driveItems](driveitem.md). Only present on document libraries. |
| items         | [listItem](listitem.md) collection                                              | All items contained in the list.                                                                                       |
| operations    | [richLongRunningOperation](../resources/richlongrunningoperation.md) collection | The collection of long-running operations on the list.                                                                 |
| permissions   | [permission](permission.md) collection                                          | The set of permissions for the item. Read-only. Nullable.                                                              |
| subscriptions | [subscription](subscription.md) collection                                      | The set of subscriptions on the list.                                                                                  |

## JSON representation

The following JSON representation shows the resource type.

<!-- { "blockType": "resource",
       "@odata.type": "microsoft.graph.list",
       "keyProperty": "id",
       "optionalProperties": [ "items", "drive"] } -->

```json
{
  "createdBy": { "@odata.type": "microsoft.graph.identitySet" },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "eTag": "String",
  "id": "String (identifier)",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "String (timestamp)",
  "list": { "@odata.type": "microsoft.graph.listInfo" },
  "name": "String",
  "parentReference": { "@odata.type": "microsoft.graph.itemReference" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "system": "Boolean",
  "webUrl": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/Lists",
  "tocBookmarks": {
    "Lists": "#"
  },
  "suppressions": []
}
-->
