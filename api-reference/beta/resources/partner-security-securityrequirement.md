---
title: "securityRequirement resource type"
description: "Base security requirement object"
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# securityRequirement resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base type for security requirements.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityscore-list-requirements.md)|[microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) collection|Get a list of the [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) objects and their properties.|
|[Get](../api/partner-security-securityrequirement-get.md)|[microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md)|Read the properties and relationships of a [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionUrl|String|Link to site where the admin can take action on the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|complianceStatus|microsoft.graph.partner.security.complianceStatus|Represents if the partner is compliant with this requirement. The possible values are: `compliant`, `noncomplaint`, `unknownFutureValue`.|
|helpUrl|String|Link to help documentation for the requirement. Inherited from [microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md).|
|id|String|Identifier for the requirement Inherited from [microsoft.graph.entity](../resources/entity.md).|
|maxScore|Int64|The maximum score possible for the requirement. |
|requirementType|microsoft.graph.partner.security.securityRequirementType|The type of requirement. The possible values are: `mfaEnforcedForAdmins`, `mfaEnforcedForAdminsOfCustomers`, `securityAlertsPromptlyResolved`, `securityContactProvided`, `spendingBudgetSetForCustomerAzureSubscriptions`, `unknownFutureValue`.|
|score|Int64|The score received for this requirement. |
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

