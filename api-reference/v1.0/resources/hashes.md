---
author: spgraph-docs-team
description: "Groups available hashes into a single structure for an item."
ms.date: 03/21/2024
title: "hashes resource type"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---

# hashes resource type

Namespace: microsoft.graph

Groups available hashes into a single structure for an item.

> [!NOTE]
> Not all services provide a value for all hash properties listed.

## Properties

| Property         | Type   | Description                                                       |
|:-----------------|:-------|:------------------------------------------------------------------|
| **crc32Hash**    | String | The CRC32 value of the file (if available). Read-only.            |
| **quickXorHash** | String | A proprietary hash of the file that can be used to determine if the contents of the file change (if available). Read-only. |
| **sha1Hash**     | String | SHA1 hash for the contents of the file (if available). Read-only. |
| **sha256Hash**   | String | This property isn't supported. Don't use. |

> **Note:** **quickXorHash** is the only value that is guaranteed to be available for both OneDrive for work or school and OneDrive for home. To calculate **quickXorHash** for a file, see [QuickXorHash snippet](/onedrive/developer/code-snippets/quickxorhash).

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "sha1Hash", "crc32Hash", "quickXorHash" ],
  "@odata.type": "microsoft.graph.hashes"
}-->

```json
{
  "crc32Hash": "string (hex)",
  "sha1Hash": "string (hex)",
  "sha256Hash": "string (hex)",
  "quickXorHash": "string (base64)"
}
```

## Related content

For more information about the facets on a **driveItem**, see [driveItem](driveitem.md).

<!--
{
  "type": "#page.annotation",
  "description": "The hashes facet provides hash identifiers for a file in OneDrive",
  "keywords": "hash,sha1,crc32,item,facet",
  "section": "documentation",
  "tocPath": "Facets/Hashes",
  "suppressions": []
}
-->
