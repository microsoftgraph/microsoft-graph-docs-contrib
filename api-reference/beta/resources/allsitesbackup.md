---
title: "allSitesBackup resource type"
description: "Represents fullservicbackup settings for Sharepoint"
author: "vidula-verma"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# allSitesBackup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents fullservicbackup settings for Sharepoint.


Inherits from [fullServiceBackupBase](../resources/fullservicebackupbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/allsitesbackup-get.md)|[allSitesBackup](../resources/allsitesbackup.md)|Read the properties and relationships of [allSitesBackup](../resources/allsitesbackup.md) object.|
|[enable](../api/allsitesbackup-enable.md)|[allSitesBackup](../resources/allsitesbackup.md)|Enable Full Service Backup for Sharepoint. All the sites in Sharepoint will be protected automatically without creating a policy.|
|[disable](../api/allsitesbackup-disable.md)|[allSitesBackup](../resources/allsitesbackup.md)|Disable Full Service Backup for Sharepoint.|

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
  "@odata.type": "microsoft.graph.allSitesBackup",
  "baseType": "microsoft.graph.fullServiceBackupBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allSitesBackup",
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

