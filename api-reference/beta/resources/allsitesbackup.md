---
title: "allSitesBackup resource type"
description: "Represents full service backup settings for SharePoint."
author: "vidula-verma"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# allSitesBackup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents full service backup settings for SharePoint.

Inherits from [fullServiceBackupBase](../resources/fullservicebackupbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/allsitesbackup-get.md)|[allSitesBackup](../resources/allsitesbackup.md)|Read the properties and relationships of [allSitesBackup](../resources/allsitesbackup.md) object.|
|[enable](../api/allsitesbackup-enable.md)|[allSitesBackup](../resources/allsitesbackup.md)|**TODO: Add Description**|
|[disable](../api/allsitesbackup-disable.md)|[allSitesBackup](../resources/allsitesbackup.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|The unique identifier for full service backup policy.  Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|status|fullServiceBackupStatus|It shows the status of fullServiceBackup. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `disabled`, `enabled`, `unknownFutureValue`.|
|actionOnExistingPolicy|fullServiceBackupDisableMode|It determines after disabling fullService backup, in what state does the user wants its policy to be in. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`.|
|lastRunDateTime|DateTimeOffset|TimeStamp of when the last discovery of artifacts job ran.| Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this entity. Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md).|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this entity. |

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
  "@odata.type": "microsoft.graph.allSitesBackup",
  "baseType": "microsoft.graph.fullServiceBackupBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allSitesBackup",
  "actionOnExistingPolicy": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "lastRunDateTime": "String (timestamp)",
  "policyId": "String",
  "status": "String"
}
```

