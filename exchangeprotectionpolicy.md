---
title: "exchangeProtectionPolicy resource type"
description: "Describes exchange protection policy and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "backup-and-restore"
doc_type: resourcePageType
---

# exchangeProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin or Exchange Online Admin to protect Exchange Online. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single M365 service.

Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List exchangeProtectionPolicy objects](../api/backuprestoreroot-list-exchangeprotectionpolicies.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) collection|Get a list of the [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) objects and their properties.|
|[Create exchangeProtectionPolicy](../api/backuprestoreroot-post-exchangeprotectionpolicies.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Create a new [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object.|
|[Get exchangeProtectionPolicy](../api/exchangeprotectionpolicy-get.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Read the properties and relationships of an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object.|
|[Update exchangeProtectionPolicy](../api/exchangeprotectionpolicy-update.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Update the properties of an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object.|
|[Delete exchangeProtectionPolicy](../api/backuprestoreroot-delete-exchangeprotectionpolicies.md)|None|Delete an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md) object.|
|[activate](../api/exchangeprotectionpolicy-activate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Activate an inactive protection policy|
|[deactivate](../api/exchangeprotectionpolicy-deactivate.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Deactivate an active protection policy|
|[List mailboxInclusionRules](../api/exchangeprotectionpolicy-list-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|Get the mailboxProtectionRule resources from the mailboxInclusionRules navigation property.|
|[Add mailboxProtectionRule](../api/exchangeprotectionpolicy-post-mailboxinclusionrules.md)|[mailboxProtectionRule](../resources/mailboxprotectionrule.md)|Add mailboxInclusionRules by posting to the mailboxInclusionRules collection.|
|[Remove mailboxInclusionRules](../api/exchangeprotectionpolicy-delete-mailboxinclusionrules.md)|None|Remove a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.|
|[List mailboxProtectionUnits](../api/exchangeprotectionpolicy-list-mailboxprotectionunits.md)|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|Get the mailboxProtectionUnit resources from the mailboxProtectionUnits navigation property.|
|[Add mailboxProtectionUnit](../api/exchangeprotectionpolicy-post-mailboxprotectionunits.md)|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md)|Add mailboxProtectionUnits by posting to the mailboxProtectionUnits collection.|
|[Remove mailboxProtectionUnits](../api/exchangeprotectionpolicy-delete-mailboxprotectionunits.md)|None|Remove a [mailboxProtectionUnit](../resources/mailboxprotectionunit.md) object.|

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
|status|[protectionPolicyStatus](../resources/exchangeProtectionPolicy.md#protectionpolicybase-resource-type)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values
|Member | Description |
|:------|:------------|
|active | All units are in protected state, policy status is active.|
|activeWithErrors | Some units are protected while others are unprotected, policy status is activeWithErrors.|
|inactive | All units are in unprotected state, policy status is inactive.|
|updating | Some/All units are in protectRequested/unprotectRequested/removeRequested state, policy status is updating.|
|unknownFutureValue | Marker value for future compatibility.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mailboxInclusionRules|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|his derived entity contains the site expression and other metadata. It is associated to the Exchange Protection policy.|
|mailboxProtectionUnits|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|This derived entity contains the protection units that refers to the mailbox that are being protected under the exchange protection policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeProtectionPolicy",
  "baseType": "microsoft.backupRestore.protectionPolicyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeProtectionPolicy",
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

