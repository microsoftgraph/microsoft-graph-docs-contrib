---
author: spgraph-docs-team
description: "Represents a file, folder, or other item stored in a drive."
title: driveItem
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 06/29/2024
---

# driveItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file, folder, or other item stored in a drive.

All file system objects in OneDrive and SharePoint are returned as **driveItem** resources. Items in SharePoint document libraries can be represented as [listItem][] or **driveItem** resources.

There are two primary ways of addressing a **driveItem** resource:

* By the **driveItem** unique identifier using `drive/items/{item-id}`
* By file system path using `/drive/root:/path/to/file`

For more information, see [addressing driveItems](/graph/onedrive-addressing-driveitems).

**DriveItem** resources have facets modeled as properties that provide data about the driveItem's identities and capabilities.
For example:

* Folders have a [**folder facet**][folder]
* Files have a [**file facet**][file].
* Images have an [**image facet**][image] in addition to their file facet.
* Images taken with a camera (photos) have a [**photo facet**][photo] that identifies the item as a photo and provides the properties of when the photo was taken and with what device.

Items with the **folder** facet act as containers of items and therefore have a `children` reference pointing to a collection of **driveItems** under the folder.

>**Note:** In OneDrive for Business or SharePoint document libraries, the **cTag** property isn't returned, if the **driveItem** has a [folder][] facet.


## Methods

| Method                                                                       | Return Type | Description |
|:-----------------------------------------------------------------------------|:------------|:-------------|
| [Get item](../api/driveitem-get.md)                                          | [driveItem](../resources/driveitem.md) |Retrieve the metadata for a **driveItem** in a drive.|
| [Get analytics][]                                                            | [itemAnalytics][] | Get analytics for this resource.|
| [Get activities by interval][]                                               | [itemActivityStat](../resources/itemactivitystat.md) | Get a collection of **itemActivityStats** within the specified time interval.|
| [List children](../api/driveitem-list-children.md)                           | [driveItem](../resources/driveitem.md) collection | Return a collection of **driveItems** in the children relationship of a **driveItem**.|
| [List versions](../api/driveitem-list-versions.md)                           | [driveItemVersion][] collection | Retrieve the versions of a file in the current user's drive.|
| [Create folder](../api/driveitem-post-children.md)                             | [driveItem](../resources/driveitem.md) | Create a **driveItem** in the specified drive.|
| [Update item](../api/driveitem-update.md)                                    | [driveItem](../resources/driveitem.md) | Update a **driveItem** in the drive.|
| [Upload](../api/driveitem-put-content.md)                            | [driveItem](../resources/driveitem.md) | Upload content to the **driveItem**.|
| [Download file content](../api/driveitem-get-contentstream.md) | Stream |Download the contents of the primary stream (file) of a **driveItem**. |
| [Download specific file format][download-format]                             | download URL | Download content of a **driveItem** with a specific format.|
| [Delete item](../api/driveitem-delete.md)                                    | None | Delete a **driveItem**.|
| [Restore item](../api/driveitem-restore.md)                                    | [driveItem](../resources/driveitem.md) | Restore a deleted [driveItem](../resources/driveitem.md) that is currently in the [recycle bin](../resources/recyclebin.md).|
| [Permanently delete item](../api/driveitem-permanentdelete.md)                  | None | Permanently delete a **driveItem** by using its ID. |
| [Move item](../api/driveitem-move.md)                                        | [driveItem](../resources/driveitem.md) | Move a **driveItem** to a new parent item.|
| [Copy item](../api/driveitem-copy.md)                                        | details about how to [monitor the progress](/graph/long-running-actions-overview) of the copy | Create a copy of a **driveItem** (including any children).|
| [Search items](../api/driveitem-search.md)                                   | [driveItem](../resources/driveitem.md) collection | Search the hierarchy of items for items matching a query.|
| [Track changes](../api/driveitem-delta.md)                         | delta link | List any changes in the drive.|
| [Follow item](../api/driveitem-follow.md)                                    | [driveItem](../resources/driveitem.md)  | Follow a **driveItem**.|
| [Unfollow item](../api/driveitem-unfollow.md)                                | None | Unfollow a **driveItem**.|
| [Get thumbnails](../api/driveitem-list-thumbnails.md)                       | [driveItem](../resources/driveitem.md) collection | List **driveItems** with their thumbnails.|
| [Create sharing link](../api/driveitem-createlink.md)                        | sharing link | Create a link to share the **driveItem**.|
| [Add permissions](../api/driveitem-invite.md)                                | [permission][] collection | Send a sharing invite to a user.|
| [List permissions](../api/driveitem-list-permissions.md)                     | [permission][] collection | Retrieve the collection of permissions on a **driveItem**.|
| [Create permission](../api/driveitem-post-permissions.md)                     | [permission][] | Create a permission on a **driveItem**.|
| [Delete permission](../api/permission-delete.md)                             | None | Remove the permission from the **driveItem**.|
| [Revoke grants on sharing link](../api/permission-revokegrants.md)| [permission][] | Revoke access to a **listItem** or **driveItem** granted via a sharing link by removing the specified recipient from the link.|
| [Get WebSocket channel][getWebSocket]                                        | [subscription][] | Receive near-real-time change notifications for a drive using socket.io.|
| [Preview item][item-preview]                                                 | json object | Obtain short-lived embeddable URLs for an item in order to render a temporary preview.|
| [Check in files](../api/driveitem-checkin.md)                                      | None| Check in a checked out **driveItem** resource, which makes the version of the document available to others. |
| [Check out files](../api/driveitem-checkout.md)                                    | None| Check out a **driveItem** resource to prevent others from editing the document, and prevent your changes from being visible until the documented is [checked in](../api/driveitem-checkin.md). |
| [Discard checkout](../api/driveitem-discardcheckout.md)                       | None| Discard a previously [checked out](../api/driveitem-checkout.md) **driveItem**.|
| [Extract sensitivity labels](../api/driveitem-extractsensitivitylabels.md)   | [extractSensitivityLabelsResult](../resources/extractsensitivitylabelsresult.md) | Extract one or more sensitivity labels assigned to a drive item and update the metadata of a drive item with the latest details of the assigned label. |
| [Assign sensitivity label](../api/driveitem-assignsensitivitylabel.md)       | String | Asynchronously assign a sensitivity label to a **driveItem**.|
| [Get retention label](../api/driveitem-getretentionlabel.md)                 | [itemRetentionLabel](../resources/itemretentionlabel.md) | Get metadata information for a retention label applied on a **driveItem**. |
| [Set retention label](../api/driveitem-setretentionlabel.md)                 | [itemRetentionLabel](../resources/itemretentionlabel.md) | Apply (set) a retention label on a **driveItem** (files and folders). |
| [Remove retention label](../api/driveitem-removeretentionlabel.md)           | None | Remove a retention label from a **driveItem**. |
| [Lock or unlock record](../api/driveitem-lockorunlockrecord.md)              | [itemRetentionLabel](../resources/itemretentionlabel.md) | Lock or unlock a retention label on a **driveItem** that classifies content as records. |
|[Create upload session](../api/driveitem-createuploadsession.md)              |[uploadSession](../resources/uploadsession.md)|Create an upload session to allow your app to upload files up to the maximum file size.|
| [Download file (deprecated)](../api/driveitem-get-content.md)                          | download URL | Download content of a **driveItem**.|
|**Open extensions**|||
| [Create open extension](../api/opentypeextension-post-opentypeextension.md) | [openTypeExtension](opentypeextension.md) | Create an open extension and add custom properties to a new or existing **driveItem**.|
| [Get open extension](../api/opentypeextension-get.md) | [openTypeExtension](opentypeextension.md) collection | Get an open extension identified by the extension name.|

## Properties

| Property             | Type               | Description
|:---------------------|:-------------------|:---------------------------------
| audio                | [audio][]          | Audio metadata, if the item is an audio file. Read-only. Only on OneDrive Personal.
| bundle               | [bundle][]         | Bundle metadata, if the item is a bundle. Read-only.
| content (deprecated) | Stream             | The content stream, if the item represents a file. The **content** property will have a potentially breaking change in behavior in the future. It will stream content directly instead of redirecting. To proactively opt in to the new behavior ahead of time, use the **contentStream** property instead.
| contentStream        | Stream             | The content stream, if the item represents a file.
| createdBy            | [identitySet][]    | Identity of the user, device, and application, which created the item. Read-only.
| createdDateTime      | DateTimeOffset     | Date and time of item creation. Read-only.
| cTag                 | String             | An eTag for the content of the item. This eTag isn't changed if only the metadata is changed. **Note** This property isn't returned if the item is a folder. Read-only.
| deleted              | [deleted][]        | Information about the deleted state of the item. Read-only.
| description          | String             | Provides a user-visible description of the item. Read-write. Only on OneDrive Personal.
| eTag                 | String             | eTag for the entire item (metadata + content). Read-only.
| file                 | [file][]           | File metadata, if the item is a file. Read-only.
| fileSystemInfo       | [fileSystemInfo][] | File system information on client. Read-write.
| folder               | [folder][]         | Folder metadata, if the item is a folder. Read-only.
| id                   | String             | The unique identifier of the item within the Drive. Read-only.
| image                | [image][]          | Image metadata, if the item is an image. Read-only.
| lastModifiedBy       | [identitySet][]    | Identity of the user, device, and application, which last modified the item. Read-only.
| lastModifiedDateTime | DateTimeOffset     | Date and time at which the item was last modified. Read-only.
| location             | [geoCoordinates][] | Location metadata, if the item has location data. Read-only.
| malware              | [malware][]        | Malware metadata, if the item was detected to contain malware. Read-only.
| media                | [media][]          | Information about the media (audio or video) item. Read-write. Only on OneDrive for Business and SharePoint.
| name                 | String             | The name of the item (filename and extension). Read-write.
| package              | [package][]        | If present, indicates that this item is a package instead of a folder or file. Packages are treated like files in some contexts and folders in others. Read-only.
| parentReference      | [itemReference][]  | Parent information, if the item has a parent. Read-write.
| pendingOperations    | [pendingOperations][] | If present, indicates that indicates that one or more operations that might affect the state of the driveItem are pending completion. Read-only.
| photo                | [photo][]          | Photo metadata, if the item is a photo. Read-only.
| publication          | [publicationFacet][] | Provides information about the published or checked-out state of an item, in locations that support such actions. This property isn't returned by default. Read-only. |
| remoteItem           | [remoteItem][]     | Remote item data, if the item is shared from a drive other than the one being accessed. Read-only.
| root                 | [root][]           | If this property is non-null, it indicates that the driveItem is the top-most driveItem in the drive.
| searchResult         | [searchResult][]   | Search metadata, if the item is from a search result. Read-only.
| shared               | [shared][]         | Indicates that the item was shared with others and provides information about the shared state of the item. Read-only.
| sharepointIds        | [sharepointIds][]  | Returns identifiers useful for SharePoint REST compatibility. Read-only.
| size                 | Int64              | Size of the item in bytes. Read-only.
| specialFolder        | [specialFolder][]  | If the current item is also available as a special folder, this facet is returned. Read-only.
| source               | [driveItemSource][]| Information about the drive item source. Read-only. Only on OneDrive for Business and SharePoint.
| video                | [video][]          | Video metadata, if the item is a video. Read-only.
| viewpoint            | [driveItemViewpoint][] | Returns information specific to the calling user for this drive item. Read-only.
| webDavUrl            | String             | WebDAV compatible URL for the item.
| webUrl               | String             | URL that displays the resource in the browser. Read-only.

**Note:** The eTag and cTag properties work differently on containers (folders).
The cTag value is modified when content or metadata of any descendant of the folder is changed.
The eTag value is only modified when the folder's properties are changed, except for properties that are derived from descendants (like **childCount** or **lastModifiedDateTime**).

## Relationships

| Relationship       | Type                        | Description
|:-------------------|:----------------------------|:--------------------------
| activities         | [itemActivity][] collection | The list of recent activities that took place on this item.
| analytics          | [itemAnalytics][] resource  | Analytics about the view activities that took place on this item.
| children           | driveItem collection        | Collection containing Item objects for the immediate children of Item. Only items representing folders have children. Read-only. Nullable.
| createdByUser      | [user][]                    | Identity of the user who created the item. Read-only.
| extensions         | [extension](extension.md) collection | The collection of open extensions defined for this item. Nullable.|
| lastModifiedByUser | [user][]                    | Identity of the user who last modified the item. Read-only.
| listItem           | [listItem][]                | For drives in SharePoint, the associated document library list item. Read-only. Nullable.
| permissions        | [permission][] collection   | The set of permissions for the item. Read-only. Nullable.
| retentionLabel     | [itemRetentionLabel][]      | Information about retention label and settings enforced on the **driveItem**. Read-write.
| subscriptions      | [subscription][] collection | The set of subscriptions on the item. Only supported on the root of a drive.
| thumbnails         | [thumbnailSet][] collection | Collection of [thumbnailSet][] objects associated with the item. For more information, see [getting thumbnails][]. Read-only. Nullable.
| versions           | [driveItemVersion][] collection | The list of previous versions of the item. For more info, see [getting previous versions][]. Read-only. Nullable.
| workbook           | [workbook][]                | For files that are Excel spreadsheets, access to the workbook API to work with the spreadsheet's contents. Nullable.

## Instance Attributes

Instance attributes are properties with special behaviors.
These properties are temporary and either define behavior the service should perform or provide short-term property values, like a download URL for an item that expires.

| Property name                     | Type   | Description
|:----------------------------------|:-------|:--------------------------------
| @microsoft.graph.conflictBehavior | string | The conflict resolution behavior for actions that create a new item. You can use the values *fail*, *replace*, or *rename*. The default for PUT is *replace*. An item is never returned with this annotation. Write-only.
| @microsoft.graph.downloadUrl      | string | A URL that can be used to download this file's content. Authentication isn't required with this URL. Read-only.
| @microsoft.graph.sourceUrl        | string | This instance annotation can be used to instruct the service to download the contents of the URL when issuing a PUT request, and stores it as the file. Write-only.

>**Notes:**
>The parameter `@microsoft.graph.conflictBehavior` should be included in the URL instead of the body of the request.
>
>The `@microsoft.graph.downloadUrl` value is a short-lived URL and can't be cached. The URL is invalidated after for a short period of time (1 hour).
Removing file permissions for a user might not immediately invalidate the URL.
>
>Using the `@microsoft.graph.sourceUrl` property for file uploading is [not supported](/onedrive/developer/rest-api/api/driveitem_upload_url?view=odsp-graph-online#remarks&preserve-view=true) in OneDrive for Business, SharePoint Online, and SharePoint Server 2016.

## JSON representation

The following JSON representation shows the resource type.

The **driveItem** resource is derived from [**baseItem**][baseItem] and inherits properties from that resource.

<!-- { "blockType": "resource", "@type": "microsoft.graph.driveItem", "@type.aka": "oneDrive.item",
       "baseType": "microsoft.graph.baseItem",
       "optionalProperties": ["cTag", "children", "folder", "file", "image", "audio", "video", "bundle",
       "location", "deleted", "specialFolder", "photo", "thumbnails", "searchResult", "remoteItem",
       "shared", "content","contentStream", "@microsoft.graph.conflictBehavior", "@microsoft.graph.downloadUrl", "@content.sourceUrl",
       "sharepointIds", "source", "media", "extensions"],
       "keyProperty": "id", "openType": true } -->

```json
{
  "audio": { "@odata.type": "microsoft.graph.audio" },
  "bundle": { "@odata.type": "microsoft.graph.bundle" },
  "content": { "@odata.type": "Edm.Stream" },
  "contentStream": { "@odata.type": "Edm.Stream" },
  "cTag": "string (etag)",
  "deleted": { "@odata.type": "microsoft.graph.deleted"},
  "description": "string",
  "file": { "@odata.type": "microsoft.graph.file" },
  "fileSystemInfo": { "@odata.type": "microsoft.graph.fileSystemInfo" },
  "folder": { "@odata.type": "microsoft.graph.folder" },
  "image": { "@odata.type": "microsoft.graph.image" },
  "location": { "@odata.type": "microsoft.graph.geoCoordinates" },
  "malware": { "@odata.type": "microsoft.graph.malware" },
  "media": { "@odata.type": "microsoft.graph.media" },
  "package": { "@odata.type": "microsoft.graph.package" },
  "pendingOperations": { "@odata.type": "microsoft.graph.pendingOperations" },
  "photo": { "@odata.type": "microsoft.graph.photo" },
  "publication": {"@odata.type": "microsoft.graph.publicationFacet"},
  "remoteItem": { "@odata.type": "microsoft.graph.remoteItem" },
  "root": { "@odata.type": "microsoft.graph.root" },
  "searchResult": { "@odata.type": "microsoft.graph.searchResult" },
  "shared": { "@odata.type": "microsoft.graph.shared" },
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "size": 1024,
  "source": { "@odata.type": "microsoft.graph.driveItemSource" },
  "specialFolder": { "@odata.type": "microsoft.graph.specialFolder" },
  "video": { "@odata.type": "microsoft.graph.video" },
  "viewpoint": { "@odata.type": "microsoft.graph.driveItemViewpoint" },
  "webDavUrl": "string",

  /* relationships */
  "activities": [{"@odata.type": "microsoft.graph.itemActivity"}],
  "children": [{ "@odata.type": "microsoft.graph.driveItem" }],
  "createdByUser": { "@odata.type": "microsoft.graph.user" },
  "retentionLabel": { "@odata.type": "microsoft.graph.itemRetentionLabel" },
  "lastModifiedByUser": { "@odata.type": "microsoft.graph.user" },
  "permissions": [ {"@odata.type": "microsoft.graph.permission"} ],
  "subscriptions": [ {"@odata.type": "microsoft.graph.subscription"} ],
  "thumbnails": [ {"@odata.type": "microsoft.graph.thumbnailSet"}],
  "versions": [ {"@odata.type": "microsoft.graph.driveItemVersion"}],

  /* inherited from baseItem */
  "id": "string (identifier)",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "eTag": "string",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "parentReference": {"@odata.type": "microsoft.graph.itemReference"},
  "webUrl": "string",

  /* instance annotations */
  "@microsoft.graph.conflictBehavior": "string",
  "@microsoft.graph.downloadUrl": "url",
  "@microsoft.graph.sourceUrl": "url"
}
```

[item-preview]: ../api/driveitem-preview.md
[Get analytics]: ../api/itemanalytics-get.md
[Get activities by interval]: ../api/itemactivity-getbyinterval.md

[audio]: audio.md
[baseItem]: baseitem.md
[bundle]: bundle.md
[deleted]: deleted.md
[download-format]: ../api/driveitem-get-content-format.md
[driveItemSource]: driveItemSource.md
[driveItemVersion]: driveitemversion.md
[file]: file.md
[fileSystemInfo]: filesysteminfo.md
[folder]: folder.md
[getting previous versions]: ../api/driveitem-list-versions.md
[getting thumbnails]: ../api/driveitem-list-thumbnails.md
[getWebSocket]: ../api/subscriptions-socketio.md
[identitySet]: identityset.md
[image]: image.md
[itemActivity]: itemactivity.md
[itemAnalytics]: itemanalytics.md
[itemReference]: itemreference.md
[itemRetentionLabel]: itemretentionlabel.md
[geoCoordinates]: geocoordinates.md
[List activities]: ../api/activities-list.md
[listItem]: listitem.md
[malware]: malware.md
[media]: media.md
[package]: package.md
[permission]: permission.md
[pendingOperations]: pendingoperations.md
[photo]: photo.md
[remoteItem]: remoteitem.md
[root]: root.md
[searchResult]: searchresult.md
[shared]: shared.md
[sharepointIds]: sharepointids.md
[specialFolder]: specialfolder.md
[subscription]: subscription.md
[thumbnailSet]: thumbnailset.md
[video]: video.md
[driveItemViewpoint]: driveitemviewpoint.md
[workbook]: workbook.md
[user]: /graph/api/resources/users
[publicationFacet]: publicationfacet.md

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Item is the main data model in the OneDrive API. Everything is an item.",
  "keywords": "item,facet,resource",
  "section": "documentation",
  "tocPath": "Items",
  "tocBookmarks": {
    "Resources/Item": "#"
  },
  "suppressions": []
}
-->
