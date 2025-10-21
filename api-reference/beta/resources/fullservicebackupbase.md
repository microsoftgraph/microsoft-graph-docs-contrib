---
title: "fullServiceBackupBase resource type"
description: "An abstract type that represents full service backup setting."
author: "vidula-verma"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# fullServiceBackupBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents full service backup setting.

Base for [allsitesbackup](../resources/allsitesbackup.md), [allmailboxesbackup](../resources/allmailboxesbackup.md) and [alldrivesbackup](../resources/alldrivesbackup.md).

Inherits from [entity](../resources/entity.md).
                                                                  
## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|The unique identifier for full service backup policy.      |
|status|fullServiceBackupStatus|It shows the status of fullServiceBackup. The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|
|actionOnExistingPolicy|fullServiceBackupDisableMode|It determines after disabling fullService backup, in what state does the user wants its policy to be in. The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`.|
|lastRunDateTime|Edm.DateTimeOffset|TimeStamp of when the last discovery of artifacts job ran.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity.       |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fullServiceBackupBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fullServiceBackupBase",
  "policyId": "String",
  "status": "String",
  "actionOnExistingPolicy": "String",
  "lastRunDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

