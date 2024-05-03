---
title: "mfaEnforcedSecurityRequirement resource type"
description: "Describes the partner mfa enforcement security requirements from the partner security score"
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# mfaEnforcedSecurityRequirement resource type

Namespace: microsoft.graph.partner.security

This requirement aggregates the partner's Entra tenant MFA usage data to determine if admins or all users are adequately protected with MFA. 

Inherits from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Represents if the partner is compliant with this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|compliantUsersCount|Int64|Count of users who are using MFA.|
|currentScore|Int64|The score received for this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|id|String|Identifier for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|incompleteRegistrationUsersCount|Int64|The count of users who are required to use MFA, but haven't completed registration.|
|maxScore|Int64|The maximum score possible for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|mfaConditionalAccessPolicyStatus|microsoft.graph.partner.security.policyStatus|The status of Conditional Access Policies in the partner tenant. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|perUserMfaStatus|microsoft.graph.partner.security.policyStatus|Describes the status of per-user MFA in the partner tenant. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|securityDefaultsStatus|microsoft.graph.partner.security.policyStatus|The status of security defaults in the partner tenant. The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|securityRequirementType|microsoft.graph.partner.security.securityRequirementType|Always set to `mfaEnforcedForAuthenticationOfAdminUsers` or `mfaEnforcedForAuthenticationOfAllUsers`. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|state|microsoft.graph.partner.security.securityRequirementState|Describes if the requirement is in preview or is fully released. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `active`, `preview`, `unknownFutureValue`.|
|totalUsersCount|Int64|Total user count from the partner's tenant.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.mfaEnforcedSecurityRequirement",
  "baseType": "microsoft.graph.partner.security.securityRequirement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.mfaEnforcedSecurityRequirement",
  "id": "String (identifier)",
  "securityRequirementType": "String",
  "complianceStatus": "String",
  "currentScore": "Integer",
  "maxScore": "Integer",
  "state": "String",
  "updatedDateTime": "String (timestamp)",
  "totalUsersCount": "Integer",
  "incompleteRegistrationUsersCount": "Integer",
  "compliantUsersCount": "Integer",
  "securityDefaultsStatus": "String",
  "mfaConditionalAccessPolicyStatus": "String",
  "perUserMfaStatus": "String"
}
```

