---
title: "bitLocker resource"
description: "The parent resource for a stored BitLocker key with the navigation property bitlockerRecoveryKey that contains the actual recovery key."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
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
Here's a JSON representation of the resource.
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

