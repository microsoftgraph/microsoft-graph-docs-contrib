---
author: spgraph-docs-team
description: "The lockInfo resource provides read-only lock metadata for a file in OneDrive or SharePoint."
title: lockInfo resource type
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
ms.date: 05/20/2026
---

# lockInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **lockInfo** resource provides read-only lock metadata for a file. It indicates whether a file is locked, the kind of lock that is held, when the lock was created, when it expires, and which users currently hold the lock.

It is available on the **lockInfo** property of the [file](file.md) facet on a [driveItem](driveitem.md).

## Properties

| Property               | Type                                              | Description                                                                                                                          |
|:-----------------------|:--------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|
| createdDateTime        | DateTimeOffset                                    | The date and time when the lock was created, in UTC. Read-only.                                                                       |
| expirationDateTime     | DateTimeOffset                                    | The date and time when the lock expires, in UTC. Read-only.                                                                           |
| lockType               | [lockType](../resources/enums.md#locktype-values) | The type of lock currently held on the file. The possible values are: `none`, `exclusive`, `shared`, `unknownFutureValue`. Read-only. |
| owners                 | Collection([userIdentity](useridentity.md))       | The collection of users that currently hold the lock on the file. Read-only.                                                          |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "createdDateTime",
    "expirationDateTime"
  ],
  "@odata.type": "microsoft.graph.lockInfo"
}-->

```json
{
  "@odata.type": "#microsoft.graph.lockInfo",
  "lockType": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "owners": [
    { "@odata.type": "microsoft.graph.userIdentity" }
  ]
}
```

## Remarks

For more information about the facets on a **driveItem**, see [driveItem](driveitem.md).

<!--
{
  "type": "#page.annotation",
  "description": "The lockInfo facet describes lock metadata for a file in OneDrive or SharePoint.",
  "keywords": "lock,lockinfo,file,facet,onedrive,sharepoint",
  "section": "documentation",
  "tocPath": "Facets/LockInfo",
  "suppressions": []
}
-->
