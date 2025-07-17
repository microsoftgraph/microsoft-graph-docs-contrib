---
title: "PublicationFacet resource type"
description: "The **publicationFacet** resource provides details on the published status of a driveItemVersion or driveItem resource."
ms.localizationpriority: medium
author: "spgraph-docs-team"
ms.subservice: onedrive
doc_type: resourcePageType
ms.date: 03/11/2024
---

# PublicationFacet resource type

Namespace: microsoft.graph

The **publicationFacet** resource provides details on the published status of a [driveItemVersion](driveitemversion.md) or [driveItem](driveitem.md) resource.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.publicationFacet"
}-->

```json
{
  "level": "published | checkout",
  "versionId": "string",
  "checkedOutBy": { "@odata.type": "microsoft.graph.identitySet" }
}
```

## Properties

|   Property    |  Type  | Description |
| :------------ | :----- | :---------- |
| **level**     | String | The state of publication for this document. Either `published` or `checkout`. Read-only.  |
| **versionId** | String | The unique identifier for the version that is visible to the current caller. Read-only.  |
| **checkedOutBy**  | microsoft.graph.identitySet | The user who checked out the file.                               |



<!-- {
  "type": "#page.annotation",
  "description": "The photo facet provides details about the camera and settings on the camera for photos.",
  "keywords": "camera make,camera model, exposure, f-stop, iso",
  "section": "documentation",
  "suppressions": [
    " Warning: /api-reference/v1.0/resources/publicationfacet.md:
      Found potential enums in resource example that weren't defined in a table:(published,checkout) are in resource, but () are in table"
  ],
  "tocPath": "Facets/Photo"
} -->

