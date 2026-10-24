---
title: "appliedAppManagementPolicyRestriction resource type"
description: "Represents an app management policy restriction applied to an audited activity."
author: "yclkvnc"
ms.date: 08/20/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# appliedAppManagementPolicyRestriction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an app management policy restriction applied to an audited activity.

This complex type is returned by the **appliedAppManagementPolicyRestrictions** property of the [appManagementAudit](../resources/appmanagementaudit.md) resource.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attemptedChanges|[microsoft.graph.Dictionary](../resources/dictionary.md)|The changes attempted during the activity.|
|auditResult|[appManagementAuditLogAuditResult](../resources/enums.md#appmanagementauditlogauditresult-values)|The result that the restriction would have produced if it were enabled. This property is applicable only when **restrictionState** is `audit`. The possible values are: `notApplicable`, `wouldHaveBeenAllowed`, `wouldHaveBeenBlocked`, `unknownFutureValue`.|
|policyId|String|The unique identifier of the policy that contains the restriction.|
|policyType|[appManagementAuditLogPolicyType](../resources/enums.md#appmanagementauditlogpolicytype-values)|The type of policy that contains the restriction. The possible values are: `defaultEntraId`, `tenant`, `app`, `unknownFutureValue`.|
|restrictionDetails|[microsoft.graph.Dictionary](../resources/dictionary.md)|Details about the restriction.|
|restrictionResult|[appManagementAuditLogRestrictionResult](../resources/enums.md#appmanagementauditlogrestrictionresult-values)|The result of the restriction. The possible values are: `allowed`, `blocked`, `unknownFutureValue`.|
|restrictionState|[appManagementAuditLogRestrictionState](../resources/enums.md#appmanagementauditlogrestrictionstate-values)|The state of the restriction at the time of the activity. The possible values are: `enabled`, `disabled`, `audit`, `unknownFutureValue`.|
|restrictionType|String|The type of restriction applied to the activity.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.appliedAppManagementPolicyRestriction"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.appliedAppManagementPolicyRestriction",
  "restrictionType": "String",
  "restrictionState": "String",
  "restrictionResult": "String",
  "auditResult": "String",
  "policyId": "String",
  "policyType": "String",
  "restrictionDetails": {
    "@odata.type": "microsoft.graph.Dictionary"
  },
  "attemptedChanges": {
    "@odata.type": "microsoft.graph.Dictionary"
  }
}
```
