---
title: "customersSpendingBudgetSecurityRequirement resource type"
description: "Describes the customer spending budget security requirement from the partner security score."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# customersSpendingBudgetSecurityRequirement resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This requirement aggregates the partner's customers and their Azure spending budget usage. 

Inherits from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|String|Link to site where the admin can take action on the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Represents if the partner is compliant with this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|customersWithSpendBudgetCount|Int64|Count of customers with a spending budget set.|
|helpUrl|String|Link to help documentation for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|id|String|Identifier for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|maxScore|Int64|The maximum score possible for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|requirementType|microsoft.graph.partner.security.securityRequirementType|Always set to `spendingBudgetSetForCustomerAzureSubscriptions`. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `mfaEnforcedForAdmins`, `mfaEnforcedForAdminsOfCustomers`, `securityAlertsPromptlyResolved`, `securityContactProvided`, `spendingBudgetSetForCustomerAzureSubscriptions`, `unknownFutureValue`.|
|score|Int64|The score received for this requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|state|microsoft.graph.partner.security.securityRequirementState|Indicates if the requirement is in preview or is fully released. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md). The possible values are: `active`, `preview`, `unknownFutureValue`.|
|totalCustomersCount|Int64|The total number of customers associated with the partner.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|

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

