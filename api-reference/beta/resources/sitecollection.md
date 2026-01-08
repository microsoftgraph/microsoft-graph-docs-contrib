---
author: "spgraph-docs-team"
description: "Provides more information about a site collection."
title: "siteCollection resource type"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# siteCollection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides more information about a site collection.

If a [**site**](site.md) resource has a non-null **siteCollection** property, the site is a root site for a site collection.

## Properties

| Property             | Type     | Description                                                                         |
| :------------------- | :------- | :---------------------------------------------------------------------------------- |
| archivalDetails  | [siteArchivalDetails][] | Represents whether the site collection is recently archived, fully archived, or reactivating. The possible values are: `recentlyArchived`, `fullyArchived`, `reactivating`, `unknownFutureValue`. To update this property, use the [site: archive](../api/site-archive.md) or [site: unarchive](../api/site-unarchive.md) APIs. |
| dataLocationCode | string   | The geographic region code for where this site collection resides. Only present for multi-geo tenants. Read-only.       |
| hostname         | string   | The hostname for the site collection. Read-only.                                    |
| root             | [root][] | If present, indicates that this is a root site collection in SharePoint. Read-only. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "dataLocationCode", "root"
  ],
  "@odata.type": "microsoft.graph.siteCollection"
}-->

```json
{
  "hostname": "contoso.sharepoint.com",
  "dataLocationCode": "EUR",
  "root": { "@odata.type": "microsoft.graph.root" },
  "archivalDetails": {
    "@odata.type": "microsoft.graph.siteArchivalDetails",
    "archiveStatus": "fullyArchived"
  }
}
```

[root]: root.md
[siteArchivalDetails]: sitearchivaldetails.md

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
