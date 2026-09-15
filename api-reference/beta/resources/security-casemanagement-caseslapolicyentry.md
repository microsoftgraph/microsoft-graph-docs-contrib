---
title: "caseSlaPolicyEntry resource type"
description: "Represents a single SLA policy's denormalized status for a case."
author: "msklotz"
ms.date: 08/26/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# caseSlaPolicyEntry resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a single SLA (service level agreement) policy's denormalized status for a [case](../resources/security-casemanagement-case.md). Returned as an entry in the **slaPolicies** collection on a case. This resource is entirely server-computed; the SLA policy engine assigns and maintains SLA policies independently of the case management API.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|breachTargetDateTime|DateTimeOffset|The date and time the SLA policy is targeted to breach, if applicable. `null` when the policy is paused or completed. Computed by the service.|
|policyDisplayName|String|The display name of the SLA policy. Computed by the service.|
|policyId|String|The unique identifier of the SLA policy, assigned by the SLA policy engine. Computed by the service.|
|status|[microsoft.graph.security.caseManagement.caseSlaPolicyStatus](#caseslapolicystatus-values)|The current SLA status for this policy on this case. Computed by the service.|

### caseSlaPolicyStatus values

|Member|Description|
|:---|:---|
|active|The SLA policy is actively tracked and within its target.|
|atRisk|The SLA policy is at risk of breaching its target.|
|breached|The SLA policy has breached its target.|
|paused|Tracking for the SLA policy is paused.|
|completedMet|The SLA policy completed within its target.|
|completedBreached|The SLA policy completed after breaching its target.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.caseSlaPolicyEntry"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.caseSlaPolicyEntry",
  "policyId": "String",
  "policyDisplayName": "String",
  "status": "String",
  "breachTargetDateTime": "DateTimeOffset"
}
```
