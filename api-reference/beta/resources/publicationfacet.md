---
author: spgraph-docs-team
description: "The publicationFacet resource provides details on the published status of a driveItemVersion or driveItem resource."
ms.date: 09/10/2017
title: PublicationFacet
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---
# PublicationFacet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
| **checkedOutBy** | microsoft.graph.identitySet | The user who checked out the file.                               |


<!--
{
  "type": "#page.annotation",
  "description": "The photo facet provides details about the camera and settings on the camera for photos.",
  "keywords": "camera make,camera model, exposure, f-stop, iso",
  "section": "documentation",
  "tocPath": "Facets/Photo",
  "suppressions": []
}
-->


