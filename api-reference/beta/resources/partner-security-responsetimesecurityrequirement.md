---
title: "responseTimeSecurityRequirement resource type"
description: "Represents the response time security requirements for partner alerts in the partner security score."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
ms.date: 08/31/2024
---

# responseTimeSecurityRequirement resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response time security requirements for partner alerts in the partner security score. This requirement shows if the partner is responding quickly to address new [security alerts](../resources/security-alert.md).


Inherits from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|String|The link to the site where the admin can take action on the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|averageResponseTimeInHours|Single|The average response time for alerts from the past 30 days.|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Indicates whether the partner is compliant with this requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|helpUrl|String|The link to documentation for the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|id|String|The unique identifier for the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|maxScore|Int64|The maximum score possible for the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|requirementType|microsoft.graph.partner.security.securityRequirementType|The value of this property is always `securityAlertsPromptlyResolved` for this resource. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `mfaEnforcedForAdmins`, `mfaEnforcedForAdminsOfCustomers`, `securityAlertsPromptlyResolved`, `securityContactProvided`, `spendingBudgetSetForCustomerAzureSubscriptions`, `unknownFutureValue`.|
|score|Int64|The score received for this requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|state|microsoft.graph.partner.security.securityRequirementState|Indicates whether the requirement is in preview or is fully released. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `active`, `preview`, `unknownFutureValue`.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.responseTimeSecurityRequirement",
  "baseType": "microsoft.graph.partner.security.securityRequirement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.responseTimeSecurityRequirement",
  "id": "String (identifier)",
  "requirementType": "String",
  "complianceStatus": "String",
  "actionUrl": "String",
  "helpUrl": "String",
  "score": "Integer",
  "maxScore": "Integer",
  "state": "String",
  "updatedDateTime": "String (timestamp)",
  "averageResponseTimeInHours": "Single"
}
```

