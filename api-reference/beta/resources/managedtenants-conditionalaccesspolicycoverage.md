---
title: "conditionalAccessPolicyCoverage resource type"
description: "Represents information about any Microsoft Entra policy that defines access rules of a resource for a given managed tenant."
author: "idwilliams"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessPolicyCoverage resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about any Microsoft Entra policy that defines access rules of a resource for a given managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List conditional access coverages](../api/managedtenants-managedtenant-list-conditionalaccesspolicycoverages.md)|[microsoft.graph.managedTenants.conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) collection|Get a list of the [conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) objects and their properties.|
|[Get conditional access policy coverage](../api/managedtenants-conditionalaccesspolicycoverage-get.md)|[microsoft.graph.managedTenants.conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md)|Read the properties and relationships of a [conditionalAccessPolicyCoverage](../resources/managedtenants-conditionalaccesspolicycoverage.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditionalAccessPolicyState|String|The state for the conditional access policy. Possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`. Required. Read-only.|
|id|String|The unique identifier for this entity. Required. Read-only.|
|latestPolicyModifiedDateTime|DateTimeOffset|The date and time the conditional access policy was last modified. Required. Read-only.|
|requiresDeviceCompliance|Boolean|A flag indicating whether the conditional access policy requires device compliance. Required. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Required. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.conditionalAccessPolicyCoverage",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.conditionalAccessPolicyCoverage",
  "id": "String (identifier)",
  "tenantDisplayName": "String",
  "conditionalAccessPolicyState": "String",
  "requiresDeviceCompliance": "Boolean",
  "latestPolicyModifiedDateTime": "String (timestamp)"
}
```
