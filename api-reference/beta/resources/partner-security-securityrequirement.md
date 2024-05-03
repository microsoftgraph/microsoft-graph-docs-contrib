---
title: "securityRequirement resource type"
description: "The base security requirement"
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# securityRequirement resource type

Namespace: microsoft.graph.partner.security

Base type for security requirements.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Represents if the partner is compliant with this requirement. The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|currentScore|Int64|The score received for this requirement. |
|maxScore|Int64|The maximum score possible for the requirement. |
|securityRequirementType|microsoft.graph.partner.security.securityRequirementType|The type of requirement. The possible values are: `mfaEnforcedForAuthenticationOfAdminUsers`, `mfaEnforcedForAuthenticationOfAllUsers`, `mfaEnforcedForAuthenticationOfAdminUsersInCustomerTenants`, `noDapRelationshipsExist`, `phishResistantMfaEnforcedForAuthentication`, `securityAlertsRespondedToWithinExpectedTimeWindow`, `securityContactProvided`, `spendingBudgetSetForAzureCustomers`, `unknownFutureValue`.|
|state|microsoft.graph.partner.security.securityRequirementState|If the requirement is in preview or is fully released. The possible values are: `active`, `preview`, `unknownFutureValue`.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.securityRequirement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.securityRequirement",
  "id": "String (identifier)",
  "securityRequirementType": "String",
  "complianceStatus": "String",
  "currentScore": "Integer",
  "maxScore": "Integer",
  "state": "String",
  "updatedDateTime": "String (timestamp)"
}
```

