---
title: "fullServiceBackupBase resource type"
description: "An abstract type that represents a full-service backup setting."
author: "vidula-verma"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: "Full-service backup"
---

# fullServiceBackupBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a full-service backup setting.

Base type of [allSitesBackup](../resources/allsitesbackup.md), [allMailboxesBackup](../resources/allmailboxesbackup.md), and [allDrivesBackup](../resources/alldrivesbackup.md).

                                                                  
## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionOnExistingPolicy|fullServiceBackupDisableMode|Determines the desired policy state after disabling full-service backup. The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity.|
|lastModifiedDateTime|DateTimeOffset|Date and time when this entity was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|lastRunDateTime|DateTimeOffset|Date and time when the last artifact discovery job ran. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|policyId|String|The unique identifier for the full-service backup policy.  |
|status|fullServiceBackupStatus|The status of the full-service backup. The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|

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
  "actionOnExistingPolicy": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "lastRunDateTime": "String (timestamp)",
  "policyId": "String",
  "status": "String"
}
```

