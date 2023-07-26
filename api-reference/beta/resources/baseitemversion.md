---
author: "JeremyKelley"
description: "Represents a previous version of an item or entity."
title: "baseItemVersion resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---

# baseItemVersion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a previous version of an item or entity.

## Properties

| Property                 | Type                                                 | Description                                                             |
| :----------------------- | :--------------------------------------------------- | :---------------------------------------------------------------------- |
| id                   | string                                               | The ID of the version. Read-only.                                       |
| lastModifiedBy       | [identitySet](../resources/identityset.md)           | Identity of the user which last modified the version. Read-only.        |
| lastModifiedDateTime | [dateTimeOffset](../resources/timestamp.md)          | Date and time when the version was last modified. Read-only.                 |
| publication          | [publicationFacet](../resources/publicationfacet.md) | Indicates the publication status of this particular version. Read-only. |

## JSON representation

The following is a JSON representation of the resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.baseItemVersion", "@type.aka": "oneDrive.baseItemVersion" } -->

```json
{
  "content": { "@odata.type": "Edm.Stream" },
  "id": "String (identifier)",
  "lastModifiedBy": { "@odata.type": "microsoft.graph.identitySet" },
  "lastModifiedDateTime": "String (timestamp)",
  "publication": { "@odata.type": "microsoft.graph.publicationFacet" }
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
