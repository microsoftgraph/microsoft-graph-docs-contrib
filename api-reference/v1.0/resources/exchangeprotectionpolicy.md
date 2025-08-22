---
title: "exchangeProtectionPolicy resource type"
description: "Represents the plan defined by the Global Admin or Exchange Online Admin to protect Exchange Online."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
ms.custom: sfi-ga-nochange
---

# exchangeProtectionPolicy resource type

Namespace: microsoft.graph

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
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy to be created. |
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
|status|[protectionPolicyStatus](../resources/exchangeProtectionPolicy.md#protectionpolicystatus-values)|Status of the policy. This value is an aggregated status of the protection units. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values
|Member | Description |
|:------|:------------|
|active | All units are protected.|
|activeWithErrors | Some units are protected while others are unprotected.|
|inactive | All units are unprotected.|
|updating | Some or all units are in a `protectRequested`, `unprotectRequested`, or `removeRequested` state.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

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
  }
}
```

