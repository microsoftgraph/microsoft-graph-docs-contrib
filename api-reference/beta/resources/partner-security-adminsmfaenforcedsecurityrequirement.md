---
title: "adminsMfaEnforcedSecurityRequirement resource type"
description: "Represents the partner admin MFA enforcement security requirement from the partner security score."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# adminsMfaEnforcedSecurityRequirement resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the partner admin MFA enforcement security requirement. The requirement is calculated based on Entra tenant MFA usage data. Use this resource to determine whether admins are adequately protected with MFA. 

Inherits from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|String|The link to site where the admin can take action on the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|adminsRequiredNotUsingMfaCount|Int64|The number of admins who are required to use MFA, but haven't completed registration.|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Indicates whether the partner is compliant with this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|helpUrl|String|The link to documentation for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|id|String|The unique identifier for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|legacyPerUserMfaStatus|microsoft.graph.partner.security.policyStatus|The status of per-user MFA in the partner tenant. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|maxScore|Int64|The maximum score possible for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|mfaConditionalAccessPolicyStatus|microsoft.graph.partner.security.policyStatus|The status of conditional access policies in the partner tenant. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|mfaEnabledAdminsCount|Int64|The number of admins who are using MFA.|
|mfaEnabledUsersCount|Int64|The number of users who are using MFA.|
|requirementType|microsoft.graph.partner.security.securityRequirementType|The type of the requirement. The value is always `mfaEnforcedForAdminsOfCustomers` for this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `mfaEnforcedForAdmins`, `mfaEnforcedForAdminsOfCustomers`, `securityAlertsPromptlyResolved`, `securityContactProvided`, `spendingBudgetSetForCustomerAzureSubscriptions`, `unknownFutureValue`.|
|score|Int64|The score received for this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|securityDefaultsStatus|microsoft.graph.partner.security.policyStatus|The status of security defaults in the partner tenant. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|state|microsoft.graph.partner.security.securityRequirementState|Indicates whether the requirement is in preview or is fully released. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `active`, `preview`, `unknownFutureValue`.|
|totalAdminsCount|Int64|The total number of admins in the partner's tenant.|
|totalUsersCount|Int64|The total number of users in the partner's tenant.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|usersRequiredNotUsingMfaCount|Int64|The number of users who are required to use MFA, but haven't completed registration.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.adminsMfaEnforcedSecurityRequirement",
  "baseType": "microsoft.graph.partner.security.securityRequirement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.adminsMfaEnforcedSecurityRequirement",
  "id": "String (identifier)",
  "requirementType": "String",
  "complianceStatus": "String",
  "actionUrl": "String",
  "helpUrl": "String",
  "score": "Integer",
  "maxScore": "Integer",
  "state": "String",
  "updatedDateTime": "String (timestamp)",
  "totalAdminsCount": "Integer",
  "adminsRequiredNotUsingMfaCount": "Integer",
  "mfaEnabledAdminsCount": "Integer",
  "totalUsersCount": "Integer",
  "usersRequiredNotUsingMfaCount": "Integer",
  "mfaEnabledUsersCount": "Integer",
  "securityDefaultsStatus": "String",
  "mfaConditionalAccessPolicyStatus": "String",
  "legacyPerUserMfaStatus": "String"
}
```

