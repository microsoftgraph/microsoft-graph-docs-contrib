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
|actionOnExistingPolicy|fullServiceBackupDisableMode|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastRunDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|policyId|String|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|status|fullServiceBackupStatus|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|

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

