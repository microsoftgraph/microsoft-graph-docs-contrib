---
author: spgraph-docs-team
title: itemReference
ms.localizationpriority: medium
description: "The itemReference resource provides information necessary to address a driveItem or listItem via the API."
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# itemReference resource type

Namespace: microsoft.graph

The **itemReference** resource provides information necessary to address a [driveItem](driveitem.md) or a [listItem](listitem.md) via the API.

## Properties

| Property      | Type              | Description
|:--------------|:------------------|:-----------------------------------------
| driveId       | String            | Unique identifier of the drive instance that contains the driveItem. Only returned if the item is located in a [drive][]. Read-only.
| driveType     | String            | Identifies the type of drive. Only returned if the item is located in a [drive][]. See [drive][] resource for values.
| id            | String            | Unique identifier of the driveItem in the drive or a listItem in a list. Read-only.
| name          | String            | The name of the item being referenced. Read-only.
| path          | String            | Percent-encoded path that can be used to navigate to the item. Read-only.
| shareId       | String            | A unique identifier for a shared resource that can be accessed via the [Shares][] API.
| sharepointIds | [sharepointIds][] | Returns identifiers useful for SharePoint REST compatibility. Read-only.
| siteId        | String            | For OneDrive for Business and SharePoint, this property represents the ID of the site that contains the parent document library of the driveItem resource or the parent list of the listItem resource. The value is the same as the id property of that [site][] resource. It is an [opaque string that consists of three identifiers](/graph/api/resources/site#id-property) of the site. <br>For OneDrive, this property is not populated.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "path", "shareId", "sharepointIds" ],
  "@odata.type": "microsoft.graph.itemReference"
}-->

```json
{
  "driveId": "string",
  "driveType": "personal | business | documentLibrary",
  "id": "string",
  "name": "string",
  "path": "string",
  "shareId": "string",
  "sharepointIds": { "@odata.type": "microsoft.graph.sharepointIds" },
  "siteId": "string"
}
```

[drive]: ../resources/drive.md
[sharepointIds]: ../resources/sharepointids.md
[Shares]: ../api/shares-get.md
[site]: ../resources/site.md

## Remarks

To address a **driveItem** from an **itemReference** resource, construct a URL of the format:

```http
GET https://graph.microsoft.com/v1.0/drives/{driveId}/items/{id}
```

The **path** value is a percent-encoded API path relative to the target drive, for example: `/drive/root:/Documents/my%20file.docx`.

To retrieve the human-readable path for a breadcrumb, you can safely ignore everything up to the first `:` in the path string.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ItemReference returns a pointer to another item.",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/itemreference.md:
      Found potential enums in resource example that weren't defined in a table:(personal,business,documentLibrary) are in resource, but () are in table"
  ],
  "tocPath": "Resources/ItemReference"
} -->

