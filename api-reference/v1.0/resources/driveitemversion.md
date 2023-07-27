---
title: "driveItemVersion resource type"
description: "Represents a specific version of a driveItem."
ms.localizationpriority: medium
ms.prod: "sharepoint"
author: "JeremyKelley"
doc_type: resourcePageType
---

# driveItemVersion resource type

Namespace: microsoft.graph

Represents a specific version of a [driveItem](driveitem.md).

The following tasks are available for **driveItemVersion** resources.

|            Common task             |         HTTP method         |
| :--------------------------------- | :-------------------------- |
| [List versions][version-list]      | `GET /drive/items/{item-id}/versions`  |
| [Get version][version-get]         | `GET /drive/items/{item-id}/versions/{version-id}`     |
| [Get contents][content-get]        | `GET /drive/items/{item-id}/versions/{version-id}/content` |
| [Restore version][version-restore] | `POST /drive/items/{item-id}/versions/{version-id}/restoreversion` |

[version-list]: ../api/driveitem-list-versions.md
[version-get]: ../api/driveitemversion-get.md
[content-get]: ../api/driveitemversion-get-contents.md
[version-restore]: ../api/driveitemversion-restore.md

In the previous table, the examples use `/drive`, but there are many valid requests.

## Properties

|      Property        |                         Type                         |                               Description                               |
| :------------------- | :--------------------------------------------------- | :---------------------------------------------------------------------- |
| content              | Stream                                               | The content stream for this version of the item.                        |
| id                   | String                                               | The ID of the version. Read-only.                                       |
| lastModifiedBy       | [identitySet](../resources/identityset.md)           | Identity of the user who last modified the version. Read-only.          |
| lastModifiedDateTime | [DateTimeOffset](../resources/timestamp.md)          | Date and time when the version was last modified. Read-only.            |
| publication          | [publicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. |
| size                 | Int64                                                | Indicates the size of the content stream for this version of the item.  |


## Instance attributes

| Property name                     | Type   | Description
|:----------------------------------|:-------|:--------------------------------
| @microsoft.graph.downloadUrl      | string | A URL that can be used to download this version of the file's content. Authentication is not required with this URL. Read-only.

>**Notes:** 
>The `@microsoft.graph.downloadUrl` value is a short-lived URL and can't be cached. The URL is only available for a short period of time (1 hour) before it is invalidated.
Removing file permissions for a user might not immediately invalidate the URL.

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.baseItemVersion",
  "@odata.type": "microsoft.graph.driveItemVersion",
  "@type.aka": "oneDrive.driveItemVersion"
}-->

```json
{
  "content": { "@odata.type": "Edm.Stream" },
  "id": "String",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "String (timestamp)",
  "publication": { "@odata.type": "microsoft.graph.publicationFacet" },
  "size": "Int64",

  /* instance annotations */
  "@microsoft.graph.downloadUrl": "url",
}
```


<!-- {
  "type": "#page.annotation",
  "description": "The version facet provides information about the properties of a file version.",
  "keywords": "version,versions,version-history,history",
  "section": "documentation",
  "tocPath": "Facets/Version"
} -->
