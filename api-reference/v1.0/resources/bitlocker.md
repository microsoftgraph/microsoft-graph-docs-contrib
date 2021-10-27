---
title: "bitLocker resource"
description: "The parent resource for a stored BitLocker key with the navigation property bitlockerRecoveryKey which contains the actual recovery key."
author: "hafowler"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# bitlocker resource type

Namespace: microsoft.graph

The parent resource for a stored BitLocker key with the navigation property **bitlockerRecoveryKey** which contains the actual recovery key.

## Methods
None.

## Properties
None.

## Relationships
| Relationship | Type | Description |
|--|--|--|
| recoveryKeys | [bitlockerRecoveryKey](../resources/bitlockerrecoverykey.md) collection | The recovery keys associated with the bitlocker entity. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bitlocker",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bitlocker"
}
```

