---
author: "JeremyKelley"
description: "Represents a specific version of a driveItem."
title: "driveItemVersion resource type"
ms.localizationpriority: medium
ms.prod: "sharepoint"
doc_type: resourcePageType
---

# driveItemVersion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific version of a [driveItem](driveitem.md).

The following tasks are available for **driveItemVersion** resources.

| Common task                        | HTTP method                                                        |
| :--------------------------------- | :----------------------------------------------------------------- |
| [List versions][version-list]      | `GET /drive/items/{item-id}/versions`                              |
| [Get version][version-get]         | `GET /drive/items/{item-id}/versions/{version-id}`                 |
| [Get contents][content-get]        | `GET /drive/items/{item-id}/versions/{version-id}/content`         |
| [Restore version][version-restore] | `POST /drive/items/{item-id}/versions/{version-id}/restoreversion` |

[version-list]: ../api/driveitem-list-versions.md
[version-get]: ../api/driveitemversion-get.md
[content-get]: ../api/driveitemversion-get-contents.md
[version-restore]: ../api/driveitemversion-restore.md

In the previous table, the examples use `/drive`, but there are many valid requests.

## Properties

| Property             | Type                                                 | Description                                                             |
| :------------------- | :--------------------------------------------------- | :---------------------------------------------------------------------- |
| id                   | String                                               | The ID of the version. Read-only.                                       |
| lastModifiedBy       | [identitySet](../resources/identityset.md)           | Identity of the user who last modified the version. Read-only.          |
| lastModifiedDateTime | [DateTimeOffset](../resources/timestamp.md)          | Date and time when the version was last modified. Read-only.            |
| publication          | [publicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. |
| size                 | Int64                                                | Indicates the size of the content stream for this version of the item.  |

## Relationships

| Relationship | Type   | Description                        |
| :----------- | :----- | :--------------------------------- |
| content      | Stream | The content stream of the version. |

## JSON representation

The following is a JSON representation of the resource.

<!-- { "blockType": "resource","keyProperty":"id", "@odata.type": "microsoft.graph.driveItemVersion", "@type.aka": "oneDrive.driveItemVersion" } -->

```json
{
  "content": {"@odata.type": "Edm.Stream"},
  "id": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "publication": {"@odata.type": "microsoft.graph.publicationFacet"},
  "size": "Int64"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The version facet provides information about the properties of a file version.",
  "keywords": "version,versions,version-history,history",
  "section": "documentation",
  "tocPath": "Facets/Version",
  "suppressions": []
}
-->
