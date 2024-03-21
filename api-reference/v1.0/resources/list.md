---
author: "spgraph-docs-team"
title: "List resource"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
description: "Represents a list in a site."
doc_type: resourcePageType
---

# List resource

Namespace: microsoft.graph

Represents a list in a [site](site.md). This resource contains the top level properties of the list, including template and field definitions.

## Methods

| Method                                                     | Return Type                                                                     | Description                                                                                                                      |
|:-----------------------------------------------------------|:--------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------|
| [Get list](../api/list-get.md)                             | [list](../resources/list.md)                                                    | Get the metadata for a **list**.                                                                                                 |
| [Create list](../api/list-create.md)                       | [list](../resources/list.md)                                                    | Create a new **list** in a **site**.                                                                                             |
| [Enumerate list items](../api/listitem-list.md)            | [listItem](../resources/listitem.md) collection                                 | Get the collection of [listItems]( ../resources/listitem.md) in a **list**.                                                      |
| [Update list item](../api/listitem-update.md)              | [listItem](../resources/listitem.md)                                            | Update the properties on a [listItem]( ../resources/listitem.md).                                                                |
| [Delete list item](../api/listitem-delete.md)              | None                                                                            | Delete a [listItem]( ../resources/listitem.md) from a **list**.                                                                  |
| [Create list item](../api/listitem-create.md)              | [listItem](../resources/listitem.md)                                            | Create a new [listItem]( ../resources/listitem.md) in a **list**.                                                                |
| [Get websocket endpoint](../api/subscriptions-socketio.md) | [subscription](../resources/subscription.md)                                    | Get near-real-time change notifications for a [drive](../resources/drive.md) and **list** using [socket.io](https://socket.io/). |
| [List operations](../api/list-list-operations.md)          | [richLongRunningOperation](../resources/richlongrunningoperation.md) collection | Get a list of [rich long-running operations](../resources/richlongrunningoperation.md) associated with a **list**.               |


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
| name                 | String                            | The name of the item. Read-only. Inherited from [baseItem](baseitem.md).                              |
| parentReference      | [itemReference](itemreference.md) | Parent information if the item has a parent. Read-write. Inherited from [baseItem](baseitem.md).      |
| sharepointIds        | [sharepointIds](sharepointids.md) | Returns identifiers useful for SharePoint REST compatibility. Read-only.                              |
| system               | [systemFacet](systemfacet.md)     | If present, indicates that the list is system-managed. Read-only.                                     |
| webUrl               | String                            | URL that displays the item in the browser. Read-only. Inherited from [baseItem](baseitem.md).         |

## Relationships

| Relationship  | Type                                                                            | Description                                                                                                            |
|:--------------|:--------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------|
| columns       | [columnDefinition](columndefinition.md) collection                              | The collection of field definitions for this list.                                                                     |
| contentTypes  | [contentType](contenttype.md) collection                                        | The collection of content types present in this list.                                                                  |
| drive         | [drive](drive.md)                                                               | Allows access to the list as a **drive** resource with [driveItems](driveitem.md). Only present on document libraries. |
| items         | [listItem](listitem.md) collection                                              | All items contained in the list.                                                                                       |
| operations    | [richLongRunningOperation](../resources/richlongrunningoperation.md) collection | The collection of long-running operations on the list.                                                                 |
| subscriptions | [subscription](subscription.md) collection                                      | The set of subscriptions on the list.                                                                                  |

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "items",
    "drive"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.list"
}-->

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

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/Lists",
  "tocBookmarks": {
    "Lists": "#"
  }
} -->

