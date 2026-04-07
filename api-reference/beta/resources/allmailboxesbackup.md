---
title: "allMailboxesBackup resource type"
description: "Represents full-service backup settings for Exchange."
author: "vidula-verma"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# allMailboxesBackup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents full-service backup settings for Exchange.

Inherits from [fullServiceBackupBase](../resources/fullservicebackupbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/allmailboxesbackup-get.md)|[allMailboxesBackup](../resources/allmailboxesbackup.md)|Read the properties and relationships of an [allMailboxesBackup](../resources/allmailboxesbackup.md) object.|
|[Enable](../api/allmailboxesbackup-enable.md)|[allMailboxesBackup](../resources/allmailboxesbackup.md)|Enable full-service [backup](../resources/allmailboxesbackup.md) for Exchange.|
|[Disable](../api/allmailboxesbackup-disable.md)|[allMailboxesBackup](../resources/allmailboxesbackup.md)|Disable full-service [backup](../resources/allmailboxesbackup.md) for Exchange.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionOnExistingPolicy|fullServiceBackupDisableMode|Determines the desired policy state after disabling full-service backup. The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedDateTime|DateTimeOffset|Date and time when this entity was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). |
|lastRunDateTime|DateTimeOffset|Date and time when the last artifact discovery job ran. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|policyId|String|The unique identifier for the full-service backup policy. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). |
|status|fullServiceBackupStatus|The status of the full-service backup. The possible values are: `disabled`, `enabled`, `unknownFutureValue`. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|

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
  "actionOnExistingPolicy": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "lastRunDateTime": "String (timestamp)",
  "policyId": "String",
  "status": "String"
}
```

