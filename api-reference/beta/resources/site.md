---
author: spgraph-docs-team
description: The site resource provides metadata and relationships for a SharePoint site.
title: site resource type
ms.localizationpriority: high
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 09/18/2024
---

# site resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **site** resource provides metadata and relationships for a SharePoint site.

## Methods

| Method                                            | REST Path                                                   |
| :------------------------------------------------ | :---------------------------------------------------------- |
| [Create](../api/site-post-sites.md)               | POST /sites                                                 |
| [Get](../api/site-get.md)                         | GET /sites/{site-id}                                        |
| [Get root site][]                                 | GET /sites/root                                             |
| [Get site by path][]                              | GET /sites/{hostname}:/{site-path}                          |
| [Get site for a group][]                          | GET /groups/{group-id}/sites/root                           |
| [Get analytics][]                                 | GET /sites/{site-id}/analytics                              |
| [Get activities by interval][]                    | GET /sites/{site-id}/getActivitiesByInterval                |
| [List pages][]                                    | GET /sites/{site-id}/pages                                  |
| [List page templates][]                            | GET /sites/{site-id}/pageTemplates/microsoft.graph.pageTemplate     |
| [List root sites][]                               | GET /sites?filter=root ne null&select=siteCollection,webUrl |
| [List sites across geographies][]                 | GET /site/getAllSites                                       |
| [List subsites for a site][]                      | GET /sites/{site-id}/sites                                  |
| [Search for sites][]                              | GET /sites?search={query}                                   |
| [Archive site](../api/site-archive.md)            | POST /sites/{site-id}/archive                               |
| [Unarchive site](../api/site-unarchive.md)        | POST /sites/{site-id}/unarchive                             |
| [Follow site][]                                   | POST /users/{user-id}/followedSites/add                     |
| [Unfollow site][]                                 | POST /users/{user-id}/followedSites/remove                  |
| [List followed sites][]                           | GET /me/followedSites                                       |
| [Get permission][]                                | GET /sites/{site-id}/permissions/{permission-id}            |
| [List permissions][]                              | GET /sites/{site-id}/permissions                            |
| [Create permissions][]                            | POST /sites/{site-id}/permissions                           |
| [Delete permission][]                             | DELETE /sites/{site-id}/permissions/{permission-id}         |
| [Update permission][]                             | PATCH /sites/{site-id}/permissions/{permission-id}          |
| [List content types][]                            | GET /sites/{site-id}/contentTypes                           |
| [Create contentType][]                            | POST /sites/{site-id}/contentTypes                          |
| [List columns][]                                  | GET /sites/{site-id}/columns                                |
| [Create column][]                                 | POST /sites/{site-id}/columns                               |
| [Create document processing job](../api/site-post-documentprocessingjobs.md)| POST /sites/{site-id}/documentProcessingJobs|
| [List operations](../api/site-list-operations.md) | GET /sites/{site-id}/operations                             |
| [Get operation status](../api/site-getoperationstatus.md)| GET /sites/getOperationStatus(operationId='{siteOperationId}')|
| [Get site settings][]                             | GET /sites/{site-id}/settings                               |
| [Get delta](../api/site-delta.md)                 | GET /sites/delta                                            |
|**Open extensions**||
| [Create open extension](../api/opentypeextension-post-opentypeextension.md)                         | POST /sites/{site-id}/extensions         |
| [Get open extension](../api/opentypeextension-get.md)                            | GET /sites/{site-id}/extensions                             |
| [Update open extension](../api/opentypeextension-update.md)                         | PATCH /sites/{site-id}/extensions                        |
| [Delete open extension](../api/opentypeextension-delete.md)                         | DELETE /sites/{site-id}/extensions                       |

[Get root site]: ../api/site-get.md
[Get site by path]: ../api/site-getbypath.md
[Get site for a group]: ../api/site-get.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivity-getbyinterval.md
[List pages]: ../api/basesitepage-list.md
[List page templates]: ../api/pagetemplate-list.md
[List root sites]: ../api/site-list.md
[List sites across geographies]: ../api/site-getallsites.md
[List subsites for a site]: ../api/site-list-subsites.md
[Search for sites]: ../api/site-search.md
[Follow site]: ../api/site-follow.md
[Unfollow site]: ../api/site-unfollow.md
[List followed sites]: ../api/sites-list-followed.md
[Get permission]: ../api/site-get-permission.md
[List permissions]: ../api/site-list-permissions.md
[Create permissions]: ../api/site-post-permissions.md
[Delete permission]: ../api/site-delete-permission.md
[Update permission]: ../api/site-update-permission.md
[List content types]: ../api/site-list-contenttypes.md
[Create contentType]: ../api/site-post-contenttypes.md
[List columns]: ../api/site-list-columns.md
[Create column]: ../api/site-post-columns.md
[Get site settings]: ../api/sitesettings-get.md

## Properties

| Property             | Type               | Description                                                                                    |
| :------------------- | :----------------- | :--------------------------------------------------------------------------------------------- |
| createdDateTime      | DateTimeOffset     | The date and time when the site was created. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                            |
| description          | String             | The descriptive text for the site. Inherited from [baseItem](../resources/baseitem.md).                                                            |
| displayName          | String             | The full title for the site. Read-only.                                                        |
| eTag                 | String             | ETag for the site. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                                                 |
| id                   | String             | The [unique identifier](#id-property) of the site. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                 |
| lastModifiedDateTime | DateTimeOffset     | The date and time the site was last modified. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                      |
| locale               | String             | The language settings of the site.                                                             |
| lockState            | siteLockState      | The state of the site. The possible values are: `unlocked`, `lockedReadOnly`, `lockedNoAccess`, `lockedNoAdditions`, `unknownFutureValue` |
| name                 | String             | The name of the site. Inherited from [baseItem](../resources/baseitem.md).                                                                 |
| ownerIdentityToResolve|[identityInput](../resources/identityinput.md)|The site owner to be provided at the time of site creation only.|
| root                 | [root][]           | If present, provides the root site in the site collection. Read-only.            |
| settings             | [siteSettings]     | The settings on this site. Read-only.                                |
| shareByEmailEnabled  | Boolean            | Determines whether the site and its content can be shared via email. |
| sharepointIds        | [sharepointIds][]  | Returns identifiers useful for SharePoint REST compatibility. Read-only.                       |
| siteCollection       | [siteCollection][] | Provides details about the site's site collection. Available only on the root site. Read-only. |
| template             | siteTemplateType   | Specifies the template applied to the site. The possible values are: `sitepagepublishing`, `group`, `sts`, `unknownFutureValue`.|
| webUrl               | String             | The URL for the site that can only be provided at the time of site creation. Read-only. Inherited from [baseItem](../resources/baseitem.md).                                         |

### id property

A **site** is identified by a unique ID that is a composite of the following values:
* Site collection hostname (contoso.sharepoint.com)
* Site collection unique ID (GUID)
* Site unique ID (GUID)

The `root` identifier always references the root site for a given target, as follows:

* `/sites/root`: The tenant root site.
* `/groups/{group-id}/sites/root`: The group's team site.

## Relationships

| Relationship    | Type                                                                            | Description                                                                                                                                |
| :---------------| :------------------------------------------------------------------------------ | :----------------------------------------------------------------------------------------------------------------------------------------- |
| analytics       | [itemAnalytics][]                                                      | Analytics about the view activities that took place on this site.                                                                          |
| columns         | [columnDefinition][] collection                                                | The collection of column definitions reusable across lists under this site.                                                                |
|contentModels    | [contentModel](../resources/contentmodel.md) collection| The collection of content models applied to this site.|
| contentTypes    | [contentType][] collection                                                     | The collection of content types defined for this site.                                                                                     |
| drive           | [drive][]                                                                       | The default drive (document library) for this site.                                                                                        |
|documentProcessingJobs |[documentProcessingJob](../resources/documentprocessingjob.md) collection  | The document processing jobs running on this site. |
| drives          | [drive][] collection                                                           | The collection of drives (document libraries) under this site.                                                                             |
| extensions           | [extension](extension.md) collection | The collection of open extensions defined for this site. Nullable.|
| externalColumns | [columnDefinition][] collection                                                | The collection of column definitions available in the site that is referenced from the sites in the parent hierarchy of the current site. |
| items           | [baseItem][] collection                                                        | Used to address any item contained in this site. This collection can't be enumerated.                                                     |
| lists           | [list][] collection                                                            | The collection of lists under this site.                                                                                                   |
| operations      | [richLongRunningOperation](../resources/richlongrunningoperation.md) collection | The collection of long running operations for the site.                                                                                    |
| pages           | [baseSitePage][] collection                                                    | The collection of pages in the baseSitePages list on this site.                                                                                |
| pageTemplates   | [pageTemplate][] collection                                                    | The collection of page templates on this site.                                                                                |
| permissions     | [permission][] collection                                                      | The permissions associated with the site. Nullable.                                                                                        |
| recycleBin      | [recycleBin][]                                                                 | A container for a collection of [recycleBinItem](../resources/recyclebinitem.md) resources in this site. |
| sites           | [site][] collection                                                            | The collection of the sub-sites under this site.                                                                                           |
| termStore       | [microsoft.graph.termStore.store]                                               | The termStore under this site.                                                                                                             |

[columnDefinition]: columndefinition.md
[baseItem]: baseitem.md
[contentType]: contenttype.md
[drive]: drive.md
[identitySet]: identityset.md
[itemAnalytics]: itemanalytics.md
[list]: list.md
[permission]: permission.md
[baseSitePage]: baseSitePage.md
[pageTemplate]: pagetemplate.md
[root]: root.md
[site]: site.md
[siteSettings]: sitesettings.md
[sharepointIds]: sharepointids.md
[siteCollection]: sitecollection.md
[microsoft.graph.termStore.store]: termstore-store.md
[recycleBin]: recyclebin.md

## JSON representation

The following JSON representation shows the resource type.

The **site** resource is derived from [**baseItem**](baseitem.md) and inherits properties from that resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "root",
    "sharepointIds",
    "siteCollection",
    "drive",
    "drives",
    "permissions",
    "sites"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.baseItem",
  "@odata.type": "microsoft.graph.site"
}-->

```json
{
  "displayName": "string",
  "id": "string",
  "locale": "String",
  "lockState": "String",
  "ownerIdentityToResolve": {"@odata.type": "microsoft.graph.identityInput"},
  "root": { "@odata.type": "microsoft.graph.root" },
  "settings": { "@odata.type": "microsoft.graph.sitesettings" },
  "shareByEmailEnabled": "Boolean",
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "siteCollection": {"@odata.type": "microsoft.graph.siteCollection"},
  "template": "String",

  /* relationships */
  "analytics": { "@odata.type": "microsoft.graph.itemAnalytics" },
  "columns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],
  "contentTypes": [ { "@odata.type": "microsoft.graph.contentType" }],
  "extensions": [ { "@odata.type": "microsoft.graph.extension" }],
  "externalColumns": [ { "@odata.type": "microsoft.graph.columnDefinition" }],
  "drive": { "@odata.type": "microsoft.graph.drive" },
  "drives": [ { "@odata.type": "microsoft.graph.drive" }],
  "items": [ { "@odata.type": "microsoft.graph.baseItem" }],
  "lists": [ { "@odata.type": "microsoft.graph.list" }],
  "permissions": [ { "@odata.type": "microsoft.graph.permission" }],
  "sites": [ { "@odata.type": "microsoft.graph.site"} ],
  "termStore": { "@odata.type": "microsoft.graph.termStore.store" },

  /* inherited from baseItem */
  "createdDateTime": "datetime",
  "description": "string",
  "eTag": "string",
  "lastModifiedDateTime": "datetime",
  "name": "string",
  "webUrl": "url"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Sites",
  "tocBookmarks": {
    "Resources/Site": "#"
  },
  "suppressions": []
}
-->
