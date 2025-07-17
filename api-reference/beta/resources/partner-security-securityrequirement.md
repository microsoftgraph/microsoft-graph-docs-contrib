---
title: "securityRequirement resource type"
description: "Represents the base type for security requirement objects."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
ms.date: 08/30/2024
---

# securityRequirement resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base type for security requirement objects.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityscore-list-requirements.md)|[microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) collection|Get a list of the [securityRequirement](../resources/partner-security-securityrequirement.md) objects and their properties.|
|[Get](../api/partner-security-securityrequirement-get.md)|[microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md)|Read the properties and relationships of a [securityRequirement](../resources/partner-security-securityrequirement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|String|The link to the site where the admin can take action on the requirement.|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Indicates whether the partner is compliant with this requirement. The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|helpUrl|String|The link to documentation for the requirement.|
|id|String|The unique identifier for the requirement. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|maxScore|Int64|The maximum score possible for the requirement. |
|requirementType|microsoft.graph.partner.security.securityRequirementType|The type of requirement. The possible values are: `mfaEnforcedForAdmins`, `mfaEnforcedForAdminsOfCustomers`, `securityAlertsPromptlyResolved`, `securityContactProvided`, `spendingBudgetSetForCustomerAzureSubscriptions`, `unknownFutureValue`.|
|score|Int64|The score received for this requirement. |
|state|microsoft.graph.partner.security.securityRequirementState|Indicates whether the requirement is in preview or is fully released. The possible values are: `active`, `preview`, `unknownFutureValue`.|
|updatedDateTime|DateTimeOffset|The date the requirement properties were last updated.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.securityRequirement",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.securityRequirement",
  "id": "String (identifier)",
  "requirementType": "String",
  "complianceStatus": "String",
  "actionUrl": "String",
  "helpUrl": "String",
  "score": "Integer",
  "maxScore": "Integer",
  "state": "String",
  "updatedDateTime": "String (timestamp)"
}
```

