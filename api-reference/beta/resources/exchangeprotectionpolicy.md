---
title: "exchangeProtectionPolicy resource type"
description: "Represents the plan defined by the Global Admin or Exchange Online Admin to protect Exchange Online."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 05/30/2024
ms.custom: sfi-ga-nochange
---

# exchangeProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the plan defined by the Exchange Online Admin to protect Exchange Online. The Exchange protection policy defines  what mailbox data to protect, when to protect it, and for what time period to retain the protected data.

Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-exchangeprotectionpolicies.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Create a new [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|
|[Update](../api/exchangeprotectionpolicy-update.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Update the properties of an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|createdDateTime|DateTimeOffset|The date and time when the policy was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|displayName|String|Name of the policy to be created. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|id|String|The unique identifier of the protection rule associated to the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|isEnabled|Boolean|Indicates whether the policy is enabled. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the policy was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|protectionPolicyArtifactCount|[protectionPolicyArtifactCount](../resources/protectionpolicyartifactcount.md)|The count of artifacts in the protection policy by status. Returned only on `$select`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|Contains the retention setting details for the policy. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|
|status|[protectionPolicyStatus](../resources/protectionpolicybase.md#protectionpolicystatus-values)|Status of the policy. This value is an aggregated status of the protection units. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`. Inherited from [protectionPolicyBase](../resources/protectionpolicybase.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mailboxInclusionRules|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|The rules associated with the Exchange protection policy.|
|mailboxProtectionUnits|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|The protection units (mailboxes) that are  protected under the Exchange protection policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeProtectionPolicy",
  "baseType": "microsoft.graph.protectionPolicyBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeProtectionPolicy",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "protectionPolicyArtifactCount": {"@odata.type": "microsoft.graph.protectionPolicyArtifactCount"},
  "retentionSettings": [{"@odata.type": "microsoft.graph.retentionSetting"}],
  "status": "String"
}
```

