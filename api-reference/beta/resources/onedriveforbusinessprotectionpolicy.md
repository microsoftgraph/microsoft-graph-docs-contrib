---
title: "oneDriveForBusinessProtectionPolicy resource type"
description: "Represents details about protection policies applied to Microsoft 365 data in an organization. "
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: OneDrive for work or school protection policy
ms.date: 05/31/2024
ms.custom: sfi-ga-nochange
---

# oneDriveForBusinessProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details about protection policies applied to Microsoft 365 data in an organization. Global Admins (or SharePoint in Microsoft 365 Admins or Exchange Online Admins) define protection policies. They include what data to protect, when to protect it, and for what time period to retain the protected data for a single Microsoft 365 service.


Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-onedriveforbusinessprotectionpolicies.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Create a new [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Update](../api/onedriveforbusinessprotectionpolicy-update.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Update the properties of a [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[List driveExclusionUnits](../api/onedriveforbusinessprotectionpolicy-list-driveexclusionunits.md)|[driveExclusionUnit](../resources/driveexclusionunit.md) collection|Get a list of [driveExclusionUnit](../resources/driveexclusionunit.md) objects for an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Get driveExclusionUnit](../api/driveexclusionunit-get.md)|[driveExclusionUnit](../resources/driveexclusionunit.md)|Get a [driveExclusionUnit](../resources/driveexclusionunit.md) for an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[List driveExclusionUnitsBulkAdditionJobs](../api/onedriveforbusinessprotectionpolicy-list-driveexclusionunitsbulkadditionjobs.md)|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) collection|Get a list of [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) objects for an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Create driveExclusionUnitsBulkAdditionJob](../api/onedriveforbusinessprotectionpolicy-post-driveexclusionunitsbulkadditionjobs.md)|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md)|Create a new [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) for an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Get driveExclusionUnitsBulkAdditionJob](../api/driveexclusionunitsbulkadditionjob-get.md)|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md)|Get a [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) for an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|createdDateTime|DateTimeOffset|The date and time when the policy was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|displayName|String|The name of the policy to be created. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|id|String|The unique identifier of the protection rule associated with the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|isEnabled|Boolean|Indicates whether the policy is enabled. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|offboardRequestedDateTime|DateTimeOffset|The date and time when offboarding was requested for the protection policy. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|protectionMode|[BackupPolicyProtectionMode](../resources/enums.md#backuppolicyprotectionmode-values)|The backup mode for the protection policy. The possible values are: `standard`, `fullServiceBackup`, `unknownFutureValue`. When set to `fullServiceBackup`, the entire workload is backed up and specific drives can be excluded using exclusion units. When set to `standard`, only the drives explicitly added as protection units are backed up. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|protectionPolicyArtifactCount|[protectionPolicyArtifactCount](../resources/protectionpolicyartifactcount.md)|The count of artifacts in the protection policy by status. Returned only on `$select`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Contains the retention setting details for the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|status|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|Status of the policy. The value is the aggregated status of the protection units. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`, `offboardRequested`, `offboarded`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `offboardRequested`, `offboarded`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|driveExclusionUnits|[driveExclusionUnit](../resources/driveexclusionunit.md) collection|The drive exclusion units associated with the OneDrive for work or school protection policy.|
|driveExclusionUnitsBulkAdditionJobs|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) collection|The list of bulk addition jobs for drive exclusion units associated with the OneDrive for work or school protection policy.|
|driveInclusionRules|[driveProtectionRule](../resources/driveprotectionrule.md) collection|Contains the details of the OneDrive for Work or School protection rule.|
|driveProtectionUnits|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|Contains the protection units associated with a  OneDrive for Work or School protection policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oneDriveForBusinessProtectionPolicy",
  "baseType": "microsoft.graph.protectionPolicyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oneDriveForBusinessProtectionPolicy",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "offboardRequestedDateTime": "String (timestamp)",
  "protectionMode": "String",
  "protectionPolicyArtifactCount": {"@odata.type": "microsoft.graph.protectionPolicyArtifactCount"},
  "retentionSettings": [{"@odata.type": "microsoft.graph.retentionSetting"}],
  "status": "String"
}
```

