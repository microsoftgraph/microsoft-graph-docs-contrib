---
title: "lifecyclePolicyReport resource type"
description: "Represents the latest processing report for a lifecycle policy."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyReport resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the latest processing report for a lifecycle policy.
Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [Get report](../api/identitygovernance-lifecyclepolicy-list-report.md) | [lifecyclePolicyReport](../resources/identitygovernance-lifecyclepolicyreport.md) | Read the latest report for a lifecycle policy. |
| [List subjects](../api/identitygovernance-lifecyclepolicyreport-list-subjects.md) | [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md) collection | List subjects included in the report. |

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier for the report. Inherited from [entity](../resources/entity.md). |
| policyVersion | Int32 | The version of the lifecycle policy represented by the report. |
| scopeProcessing | [microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessing](../resources/identitygovernance-lifecyclepolicyscopeprocessing.md) | The current and latest scope-processing status for the policy. |
| subjectsInScopeCount | Int32 | The number of subjects currently in scope for the policy. |

## Relationships

| Relationship | Type | Description |
|:---|:---|:---|
| subjects | [microsoft.graph.identityGovernance.lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md) collection | The processing results for subjects included in the report. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyReport",
  "id": "String (identifier)",
  "policyVersion": "Integer",
  "scopeProcessing": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyScopeProcessing"
  },
  "subjectsInScopeCount": "Integer"
}
```
