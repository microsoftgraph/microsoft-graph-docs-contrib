---
title: "quota resource type"
description: "Represents details about space constraints on a drive resource."
author: spgraph-docs-team
ms.date: 09/10/2017
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "onedrive"
---

# quota resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **quota** resource provides details about space constraints on a [drive](drive.md) resource. In OneDrive Personal, the values reflect the total/used unified storage quota across multiple Microsoft services.

## Properties

| Property               | Type                                                | Description                                                                   |
| :--------------------- | :-------------------------------------------------- | :---------------------------------------------------------------------------- |
| total                  | Int64                                               | Total allowed storage space, in bytes. Read-only.                             |
| used                   | Int64                                               | Total space used, in bytes. Read-only.                                        |
| remaining              | Int64                                               | Total space remaining before reaching the quota limit, in bytes. Read-only.   |
| deleted                | Int64                                               | Total space consumed by files in the recycle bin, in bytes. Read-only.        |
| state                  | string                                              | Enumeration value that indicates the state of the storage space. Read-only.   |
| storagePlanInformation | [storagePlanInformation](storageplaninformation.md) | Information about the drive's storage quota plans. Only in Personal OneDrive. |

### State enumeration values

| Value      | Description                                                                                                                                                                 |
| :--------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `normal`   | The drive has plenty of remaining quota left.                                                                                                                               |
| `nearing`  | Remaining quota is less than 10% of total quota space.                                                                                                                      |
| `critical` | Remaining quota is less than 1% of total quota space.                                                                                                                       |
| `exceeded` | The used quota has exceeded the total quota. New files or folders cannot be added to the drive until it is under the total quota amount or more storage space is purchased. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.quota"
}-->

```json
{
  "deleted": 1024,
  "remaining": 1024,
  "state": "normal | nearing | critical | exceeded",
  "storagePlanInformation": {
    "upgradeAvailable": true
  },
  "total": 1024,
  "used": 1024
}
```

<!--
{
  "type": "#page.annotation",
  "description": "The quota facet provides information about how much space the OneDrive has available.",
  "keywords": "quota,available,remaining,used",
  "section": "documentation",
  "tocPath": "Facets/Quota",
  "suppressions": []
}
-->
