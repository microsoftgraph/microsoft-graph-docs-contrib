---
title: "oneDriveForBusinessProtectionPolicy resource type"
description: "Describes oneDriveForBusinessProtectionPolicy protection policy and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: backup-and-restore
doc_type: resourcePageType
---

# oneDriveForBusinessProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin or SharePoint Online Admin to protect OneDrive. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single M365 service.


Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List oneDriveForBusinessProtectionPolicy objects](../api/backuprestoreroot-list-onedriveforbusinessprotectionpolicies.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) collection|Get a list of the [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) objects and their properties.|
|[Create oneDriveForBusinessProtectionPolicy](../api/backuprestoreroot-post-onedriveforbusinessprotectionpolicies.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Create a new [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object.|
|[Get oneDriveForBusinessProtectionPolicy](../api/onedriveforbusinessprotectionpolicy-get.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Read the properties and relationships of an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object.|
|[Update oneDriveForBusinessProtectionPolicy](../api/onedriveforbusinessprotectionpolicy-update.md)|[oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md)|Update the properties of an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object.|
|[Delete oneDriveForBusinessProtectionPolicy](../api/backuprestoreroot-delete-onedriveforbusinessprotectionpolicies.md)|None|Delete an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md) object.|
|[activate](../api/onedriveforbusinessprotectionpolicy-activate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Activate an inactive protection policy|
|[deactivate](../api/onedriveforbusinessprotectionpolicy-deactivate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Deactivate an active protection policy|
|[List driveInclusionRules](../api/onedriveforbusinessprotectionpolicy-list-driveinclusionrules.md)|[driveProtectionRule](../resources/driveprotectionrule.md) collection|Get the driveProtectionRule resources from the driveInclusionRules navigation property.|
|[Add driveProtectionRule](../api/onedriveforbusinessprotectionpolicy-post-driveinclusionrules.md)|[driveProtectionRule](../resources/driveprotectionrule.md)|Add driveInclusionRules by posting to the driveInclusionRules collection.|
|[Remove driveInclusionRules](../api/onedriveforbusinessprotectionpolicy-delete-driveinclusionrules.md)|None|Remove a [driveProtectionRule](../resources/driveprotectionrule.md) object.|
|[List driveProtectionUnits](../api/onedriveforbusinessprotectionpolicy-list-driveprotectionunits.md)|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|Get the driveProtectionUnit resources from the driveProtectionUnits navigation property.|
|[Add driveProtectionUnit](../api/onedriveforbusinessprotectionpolicy-post-driveprotectionunits.md)|[driveProtectionUnit](../resources/driveprotectionunit.md)|Add driveProtectionUnits by posting to the driveProtectionUnits collection.|
|[Remove driveProtectionUnits](../api/onedriveforbusinessprotectionpolicy-delete-driveprotectionunits.md)|None|Remove a [driveProtectionUnit](../resources/driveprotectionunit.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy being created|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|identitySet|The identity of person who created the policy.|
|lastModifiedBy|identitySet|Timestamp of last modification of this policy .|
|lastModifiedDateTime|DateTimeOffset|Identity of the person who last modified this policy.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Complex type containing details of all the retention settings for the policy.|
|status|[protectionPolicyStatus](../resources/onedriveforbusinessprotectionpolicy.md#protectionpolicybase-resource-type)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|driveInclusionRules|[driveProtectionRule](../resources/driveprotectionrule.md) collection|This derived entity contains the onedrive for business expression and other metadata. It is associated to the one drive for business|
|driveProtectionUnits|[driveProtectionUnit](../resources/driveprotectionunit.md) collection|This derived entity contains the protection units that refers to the onedrive for business that are being protected under the onedriveforbusiness protection policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oneDriveForBusinessProtectionPolicy",
  "baseType": "microsoft.backupRestore.protectionPolicyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oneDriveForBusinessProtectionPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "retentionSettings": [
    {
      "@odata.type": "microsoft.graph.retentionSetting"
    }
  ]
}
```

