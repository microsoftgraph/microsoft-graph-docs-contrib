---
author: "spgraph-docs-team"
description: "Represents a specific version of a driveItem."
title: "driveItemVersion resource type"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# driveItemVersion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific version of a [driveItem](driveitem.md).

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [List](../api/driveitem-list-versions.md)                           | [driveItemVersion](../resources/driveitemversion.md) collection | Retrieve the [versions](../resources/driveitemversion.md) of a [file](../resources/driveitem.md).|
| [Get](../api/driveitemversion-get.md)                                | [driveItemVersion](../resources/driveitemversion.md) | Retrieve the metadata for a specific [version](../resources/driveitemversion.md) of a [driveItem](../resources/driveitem.md).|
| [Download version](../api/driveitemversion-get-contents.md)                  | download URL | Retrieve the contents of a specific [version](../resources/driveitemversion.md) of a [driveItem](../resources/driveitem.md). |
| [Restore version](../api/driveitemversion-restoreversion.md)                        | None | Restore a previous [version](../resources/driveitemversion.md) of a [driveItem](../resources/driveitem.md) to be the current **version**.|

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

The following JSON representation shows the resource type.

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
