---
title: "backupRestoreRoot resource type"
description: "BackupRestoreRoot resource of Microsoft 365 Backup and Storage"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# backupRestoreRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

BackupRestoreRoot resource of M365 Backup and Storage.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/backuprestoreroot-get.md) BackupRestore Service|[backupRestoreRoot](../resources/backuprestoreroot.md)|Get details of the BackupRestore Service.|
|[Enable](../api/backuprestoreroot-enable.md) BackupRestore Service|[backupRestoreRoot](../resources/backuprestoreroot.md)|Enable the BackupRestore Service.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the BackupRestoreRoot|
|serviceStatus|[serviceStatus](../resources/servicestatus.md)|Represents tenant level service status related to Backup service.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|driveInclusionRules|[driveProtectionRule](../resources/driveprotectionrule.md) collection|List of Drive Inclusion Rules applied to the tenant.|
|driveProtectionUnits|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|List of Drive Protection Units in the tenant.|
|exchangeProtectionPolicies|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) collection|List of Exchange Protection Policies in the tenant.|
|exchangeRestoreSessions|[exchangeRestoreSession](../resources/exchangerestoresession.md) collection|List of Exchange Restore Session available in the tenant.|
|mailboxInclusionRules|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|List of Mailbox Inclusion Rules applied to the tenant.|
|mailboxProtectionUnits|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|List of Mailbox Protection Units in the tenant.|
|oneDriveForBusinessProtectionPolicies|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) collection|List of OneDriveForBusiness Protection Policies in the tenant.|
|oneDriveForBusinessRestoreSessions|[oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) collection|List of OneDriveForBusiness Restore Session available in the tenant.|
|protectionPolicies|[protectionPolicyBase](../resources/protectionpolicybase.md) collection|List of Protection Policies in the tenant.|
|protectionUnits|[protectionUnitBase](../resources/protectionunitbase.md) collection|List of Protection Units in the tenant.|
|restorePoints|[restorePoint](../resources/restorepoint.md) collection|List of Restore Points in the tenant.|
|restoreSessions|[restoreSessionBase](../resources/restoresessionbase.md) collection|List of Restore Sessions in the tenant.|
|serviceApps|[serviceApp](../resources/serviceapp.md) collection|List of BackupRestore Service Apps in the tenant.|
|sharePointProtectionPolicies|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) collection|List of SharePoint Protection Policies in the tenant.|
|sharePointRestoreSessions|[sharePointRestoreSession](../resources/sharepointrestoresession.md) collection|List of SharePoint Restore Session available in the tenant.|
|siteInclusionRules|[siteProtectionRule](../resources/siteprotectionrule.md) collection|List of Site Inclusion Rules applied to the tenant.|
|siteProtectionUnits|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|List of Site Protection Units in the tenant.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.backupRestoreRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.backupRestoreRoot",
  "id": "String (identifier)",
  "serviceStatus": {
    "@odata.type": "microsoft.graph.serviceStatus"
  }
}
```
