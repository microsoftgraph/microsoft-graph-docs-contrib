---
title: "allMailboxesBackup resource type"
description: "Represents fullservicbackup settings for Exchange"
author: "vidula-verma"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# allMailboxesBackup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents fullservicbackup settings for Exchange.


Inherits from [fullServiceBackupBase](../resources/fullservicebackupbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/allmailboxesbackup-get.md)|[allMailboxesBackup](../resources/allmailboxesbackup.md)|Read the properties and relationships of [allMailboxesBackup](../resources/allmailboxesbackup.md) object.|
|[enable](../api/allmailboxesbackup-enable.md)|[allMailboxesBackup](../resources/allmailboxesbackup.md)|**TODO: Add Description**|
|[disable](../api/allmailboxesbackup-disable.md)|[allMailboxesBackup](../resources/allmailboxesbackup.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|The unique identifier for full service backup policy.  Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|status|fullServiceBackupStatus|It shows the status of fullServiceBackup. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|
|actionOnExistingPolicy|fullServiceBackupDisableMode|It determines after disabling fullService backup, in what state does the user wants its policy to be in. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`.|
|lastRunDateTime|DateTimeOffset|TimeStamp of when the last discovery of artifacts job ran.| Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.allMailboxesBackup",
  "baseType": "microsoft.graph.fullServiceBackupBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allMailboxesBackup",
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

