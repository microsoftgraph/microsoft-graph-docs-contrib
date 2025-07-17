---
title: "drive resource type"
description: "Represents a user's OneDrive or a document library in SharePoint."
author: spgraph-docs-team
ms.localizationpriority: high
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 09/27/2024
---
# drive resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The drive resource is the top-level object representing a user's OneDrive or a document library in SharePoint.

OneDrive users always have at least one drive available, their default drive.
Users without a OneDrive license may not have a default drive available.

## Methods

|                        Method                              |         Return type         | Description |
| :--------------------------------------------------------- | :-------------------------- |-------------|
| [List drive][drive-list]                                   | drive collection        |Retrieve the list of drive resources available for a target user, group, or site.|
| [Get drive][drive-get]                                     | drive                       | Get metadata about a drive.|
| [Get drive root][item-get]                                 | [driveItem][]               | Get root folder of a drive.|
| [List activities][drive-activities]                        | [itemActivity][] collection | List activities that occurred under the drive.|
| [List followed items][drive-following]                     | [driveItem][] collection    | List the user's followed driveItems.|
| [List children][item-children]                             | [driveItem][] collection    | List children of the root folder of a drive.|
| [List changes][item-changes]                               | [driveItem][] collection    | List changes for all driveItems in the drive.|
| [Search][item-search]                                      | [driveItem][] collection    | Search for driveItems in a drive.|
| [Get special folder](../api/drive-get-specialfolder.md)    | [driveItem][]               | Access a special folder by its canonical name.|


## Properties

| Property             | Type                          | Description                                                                                                                                                                                                                      |
| :------------------- | :---------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| createdBy            | [identitySet][]               | Identity of the user, device, or application that created the item. Read-only.                                                                                                                                                  |
| createdDateTime      | dateTimeOffset                | Date and time of item creation. Read-only.                                                                                                                                                                                       |
| description          | String                        | Provide a user-visible description of the drive. Read-write.
| driveType            | String                        | Describes the type of drive represented by this resource. OneDrive personal drives return `personal`. OneDrive for Business returns `business`. SharePoint document libraries return `documentLibrary`. Read-only. |
| id                   | String                        | The unique identifier of the drive. Read-only.                                                                                                                                                                                   |
| lastModifiedBy       | [identitySet][]               | Identity of the user, device, and application that last modified the item. Read-only.                                                                                                                                           |
| lastModifiedDateTime | dateTimeOffset                | Date and time the item was last modified. Read-only.                                                                                                                                                                             |
| name                 | string                        | The name of the item. Read-write.                                                                                                                                                                                                |
| owner                | [identitySet](identityset.md) | Optional. The user account that owns the drive. Read-only.                                                                                                                                                                       |
| quota                | [quota](../resources/quota.md)            | Optional. Information about the drive's storage space quota. Read-only.                                                                                                                                                          |
| sharepointIds        | [sharepointIds][]             | Returns identifiers useful for SharePoint REST compatibility. Read-only.  This property isn't returned by default and must be selected using the `$select` query parameter.                                                                               |
| system               | [systemFacet][]               | If present, indicates that it's a system-managed drive. Read-only.
| webUrl               | string (url)                  | URL that displays the resource in the browser. Read-only.                                                                                                                                                                        |

[identitySet]: identityset.md
[sharepointIds]: sharepointids.md
[systemFacet]: systemfacet.md

## Relationships

| Relationship | Type                                 | Description
|:-------------|:-------------------------------------|:-----------------------
| activities   | [itemActivity][] collection          | The list of recent activities that took place under this drive.
| bundles      | [driveItem][] collection             | Collection of [bundles][bundle] (albums and multi-select-shared sets of items). Only in personal OneDrive.
| following    | [driveItem][] collection             | The list of items the user is following. Only in OneDrive for Business.
| items        | [driveItem][] collection             | All items contained in the drive. Read-only. Nullable.
| root         | [driveItem][]                        | The root folder of the drive. Read-only.
| special      | [driveItem][] collection             | Collection of common folders available in OneDrive. Read-only. Nullable.
| list         | [list][]                             | For drives in SharePoint, the underlying document library list. Read-only. Nullable.

## JSON representation

Here's a JSON representation of a Drive resource.

The **drive** resource is derived from [**baseItem**](baseitem.md) and inherits properties from that resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "activities",
    "createdBy",
    "createdDateTime",
    "description",
    "lastModifiedBy",
    "lastModifiedDateTime",
    "name",
    "webUrl",
    "items",
    "root",
    "sharepointIds",
    "special",
    "system"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.drive"
}-->

```json
{
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "id": "string",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "string (timestamp)",
  "description": "string",
  "driveType": "personal | business | documentLibrary",
  "following": [{"@odata.type": "microsoft.graph.driveItem"}],
  "items": [{"@odata.type": "microsoft.graph.driveItem"}],
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "string (timestamp)",
  "name": "string",
  "owner": {"@odata.type": "microsoft.graph.identitySet"},
  "quota": {"@odata.type": "microsoft.graph.quota"},
  "root": {"@odata.type": "microsoft.graph.driveItem"},
  "sharepointIds": {"@odata.type": "microsoft.graph.sharepointIds"},
  "special": [{"@odata.type": "microsoft.graph.driveItem"}],
  "system": {"@odata.type": "microsoft.graph.systemFacet"},
  "webUrl": "string",

}
```


[bundle]: bundle.md
[driveItem]: driveItem.md
[itemActivity]: itemactivity.md
[item-resource]: driveitem.md
[identity-set]: identityset.md
[list]: list.md
[quota-facet]: quota.md
[drive-resource]: drive.md
[drive-activities]: ../api/activities-list.md
[drive-following]: ../api/drive-list-following.md
[drive-get]: ../api/drive-get.md
[drive-list]: ../api/drive-list.md
[item-get]: ../api/driveitem-get.md
[item-changes]: ../api/driveitem-delta.md
[item-search]: ../api/driveitem-search.md
[item-children]: ../api/driveitem-list-children.md


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Drive is a top level object for OneDrive API that provides access to the contents of a drive. ",
  "keywords": "drive,objects,resources",
  "section": "documentation",
  "tocPath": "Drives",
  "tocBookmarks": {
    "Resources/Drive": "#"
  },
  "suppressions": []
}
-->


