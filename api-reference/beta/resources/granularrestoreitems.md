---
title: "granularRestoreItems enum type"
description: "Indicates the type of granular restore items that can be searched and restored."
author: "schapagain"
ms.date: 06/05/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: enumPageType
---

# granularRestoreItems enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the type of granular restore items that can be searched and restored from backup.

## Members

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations).

| Member | Description |
|:---|:---|
| email | Email message item. |
| note | Note item. |
| contact | Contact item. |
| task | Task item. |
| calendar | Calendar item. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.granularRestoreItems"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.granularRestoreItems"
}
```
