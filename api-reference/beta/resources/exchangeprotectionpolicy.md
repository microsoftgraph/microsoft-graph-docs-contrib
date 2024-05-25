---
title: "exchangeProtectionPolicy resource type"
description: "Describes exchange protection policy and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# exchangeProtectionPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Protection Policy represents the plan defined by the Global Admin or Exchange Online Admin to protect Exchange Online. It will contain details of what data to protect, when to protect it and for what time period to retain the protected data for a single Microsoft 365 service.

Inherits from [protectionPolicyBase](../resources/protectionpolicybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create exchangeProtectionPolicy](../api/backuprestoreroot-post-exchangeprotectionpolicies.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Create a new [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|
|[Update exchangeProtectionPolicy](../api/exchangeprotectionpolicy-update.md)|[exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md)|Update the properties of an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the protection rule associated to the policy.|
|displayName|String|Name of the policy being created|
|createdDateTime|DateTimeOffset|The time of creation of the policy.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the policy.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the policy.|
|lastModifiedDateTime|DateTimeOffset|The timestamp of the last modification of the policy.|
|status|[protectionPolicyStatus](../resources/exchangeProtectionPolicy.md#protectionpolicystatus-values)|Status of the policy. It is an aggregated status of protection units.The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`.|

### protectionPolicyStatus values
|Member | Description |
|:------|:------------|
|active | All units are in protected state, policy status is active.|
|activeWithErrors | Some units are protected while others are unprotected, policy status is activeWithErrors.|
|inactive | All units are in unprotected state, policy status is inactive.|
|updating | Some/All units are in protectRequested/unprotectRequested/removeRequested state, policy status is updating.|
|unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|mailboxInclusionRules|[mailboxProtectionRule](../resources/mailboxprotectionrule.md) collection|This derived entity contains the site expression and other metadata. It is associated to the Exchange Protection policy.|
|mailboxProtectionUnits|[mailboxProtectionUnit](../resources/mailboxprotectionunit.md) collection|This derived entity contains the protection units that refers to the mailbox that are being protected under the exchange protection policy.|

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

