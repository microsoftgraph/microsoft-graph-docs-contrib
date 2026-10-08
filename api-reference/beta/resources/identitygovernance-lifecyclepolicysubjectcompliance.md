---
title: "lifecyclePolicySubjectCompliance resource type"
description: "Represents the policy-specific compliance state for a subject."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicySubjectCompliance resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy-specific compliance state for a subject. Returned in the **compliance** property of a [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| evaluatedDateTime | DateTimeOffset | The date and time when the subject's compliance was evaluated. |
| status | [microsoft.graph.identityGovernance.lifecyclePolicyComplianceStatus](../resources/enums-identitygovernance.md#lifecyclepolicycompliancestatus-values) | The subject's compliance status. The possible values are: `notEvaluated`, `compliant`, `nonCompliant`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectCompliance"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicySubjectCompliance",
  "evaluatedDateTime": "String (timestamp)",
  "status": "String"
}
```
