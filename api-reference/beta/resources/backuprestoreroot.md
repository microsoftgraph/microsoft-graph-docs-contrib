---
title: "backupRestoreRoot resource type"
description: "Represents the Microsoft 365 Backup Storage service in a tenant."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Backup restore
ms.date: 06/27/2024
---

# backupRestoreRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Microsoft 365 Backup Storage service in a tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/backuprestoreroot-get.md)|[backupRestoreRoot](../resources/backuprestoreroot.md)|Get details of the Backup Storage service.|
|[Enable](../api/backuprestoreroot-enable.md)|[backupRestoreRoot](../resources/backuprestoreroot.md)|Enable the Backup Storage service.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the Backup Storage service.|
|serviceStatus|[serviceStatus](../resources/servicestatus.md)|Represents the tenant-level status of the Backup Storage service.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|driveInclusionRules|[driveProtectionRule](../resources/driveprotectionrule.md) collection|The list of drive inclusion rules applied to the tenant.|
|driveProtectionUnits|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|The list of drive protection units in the tenant.|
|emailNotificationsSetting|[emailNotificationsSetting](../resources/emailnotificationssetting.md)|The email notification settings in the tenant.|
|exchangeProtectionPolicies|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) collection|The list of Exchange protection policies in the tenant.|
|exchangeRestoreSessions|[exchangeRestoreSession](../resources/exchangerestoresession.md) collection|The list of Exchange restore sessions available in the tenant.|
|mailboxInclusionRules|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|The list of mailbox inclusion rules applied to the tenant.|
|mailboxProtectionUnits|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|The list of mailbox protection units in the tenant.|
|oneDriveForBusinessProtectionPolicies|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) collection|The list of OneDrive for Business protection policies in the tenant.|
|oneDriveForBusinessRestoreSessions|[oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) collection|The list of OneDrive for Business restore sessions available in the tenant.|
|protectionPolicies|[protectionPolicyBase](../resources/protectionpolicybase.md) collection|List of protection policies in the tenant.|
|protectionUnits|[protectionUnitBase](../resources/protectionunitbase.md) collection|List of protection units in the tenant.|
|restorePoints|[restorePoint](../resources/restorepoint.md) collection|List of restore points in the tenant.|
|restoreSessions|[restoreSessionBase](../resources/restoresessionbase.md) collection|List of restore sessions in the tenant.|
|serviceApps|[serviceApp](../resources/serviceapp.md) collection|List of Backup Storage apps in the tenant.|
|sharePointProtectionPolicies|[sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md) collection|The list of SharePoint protection policies in the tenant.|
|sharePointRestoreSessions|[sharePointRestoreSession](../resources/sharepointrestoresession.md) collection|The list of SharePoint restore sessions available in the tenant.|
|siteInclusionRules|[siteProtectionRule](../resources/siteprotectionrule.md) collection|The list of site inclusion rules applied to the tenant.|
|siteProtectionUnits|[siteProtectionUnit](../resources/siteprotectionunit.md) collection|The list of site protection units in the tenant.|

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
