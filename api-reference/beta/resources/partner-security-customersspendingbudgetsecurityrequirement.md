---
title: "customersSpendingBudgetSecurityRequirement resource type"
description: "Represents the security requirement to have a customer spending budget for all customers."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# customersSpendingBudgetSecurityRequirement resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the security requirement to have a customer spending budget for all customers. All of a partner's customers are expected to have a spending budget set by the partner to track and control Azure spending.

This requirement aggregates the partner's customers and tracks if they have an Azure spending budget. 

Inherits from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|String|The link to the site where the admin can take action on the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Indicates whether the partner is compliant with this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|customersWithSpendBudgetCount|Int64|The number of customers with a spending budget set.|
|helpUrl|String|The link to documentation for the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|id|String|The unique identifier for the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|maxScore|Int64|The maximum score possible for the requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|requirementType|microsoft.graph.partner.security.securityRequirementType|The value of this property is always `spendingBudgetSetForCustomerAzureSubscriptions` for this resource. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `mfaEnforcedForAdmins`, `mfaEnforcedForAdminsOfCustomers`, `securityAlertsPromptlyResolved`, `securityContactProvided`, `spendingBudgetSetForCustomerAzureSubscriptions`, `unknownFutureValue`.|
|score|Int64|The score received for this requirement. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|
|state|microsoft.graph.partner.security.securityRequirementState|Indicates whether the requirement is in preview or is fully released. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `active`, `preview`, `unknownFutureValue`.|
|totalCustomersCount|Int64|The total number of customers associated with the partner.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated. Inherited from [securityRequirement](../resources/partner-security-securityrequirement.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.customersSpendingBudgetSecurityRequirement",
  "baseType": "microsoft.graph.partner.security.securityRequirement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.customersSpendingBudgetSecurityRequirement",
  "id": "String (identifier)",
  "requirementType": "String",
  "complianceStatus": "String",
  "actionUrl": "String",
  "helpUrl": "String",
  "score": "Integer",
  "maxScore": "Integer",
  "state": "String",
  "updatedDateTime": "String (timestamp)",
  "totalCustomersCount": "Integer",
  "customersWithSpendBudgetCount": "Integer"
}
```

