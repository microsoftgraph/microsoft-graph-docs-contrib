---
title: "lifecyclePolicySubjectReport resource type"
description: "Represents the lifecycle policy processing result for a single subject."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicySubjectReport resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the lifecycle policy processing result for a single subject.
Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

| Method | Return type | Description |
|:---|:---|:---|
| [List subjects](../api/identitygovernance-lifecyclepolicyreport-list-subjects.md) | [lifecyclePolicySubjectReport](../resources/identitygovernance-lifecyclepolicysubjectreport.md) collection | List subject processing results for a lifecycle policy report. |

## Properties

| Property | Type | Description |
|:---|:---|:---|
| compliance | [microsoft.graph.identityGovernance.lifecyclePolicySubjectCompliance](../resources/identitygovernance-lifecyclepolicysubjectcompliance.md) | The subject's compliance status and the date and time when it was evaluated. |
| effectivePolicy | [microsoft.graph.identityGovernance.lifecyclePolicyReference](../resources/identitygovernance-lifecyclepolicyreference.md) | A reference to the effective lifecycle policy for the subject. |
| enforcement | [microsoft.graph.identityGovernance.lifecyclePolicySubjectEnforcement](../resources/identitygovernance-lifecyclepolicysubjectenforcement.md) | The subject's enforcement status and action schedule. |
| id | String | The unique identifier for the subject report. Inherited from [entity](../resources/entity.md). |
| relationship | [microsoft.graph.identityGovernance.lifecyclePolicyRelationship](../resources/enums-identitygovernance.md#lifecyclepolicyrelationship-values) | The relationship between this policy and the subject. The possible values are: `effective`, `inScopeButIneffective`, `pending`, `unknownFutureValue`. |
| subject | [microsoft.graph.identityGovernance.lifecyclePolicySubjectReference](../resources/identitygovernance-lifecyclepolicysubjectreference.md) | The subject represented by this result. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicySubjectReport",
  "compliance": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectCompliance"
  },
  "effectivePolicy": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyReference"
  },
  "enforcement": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectEnforcement"
  },
  "id": "String (identifier)",
  "relationship": "String",
  "subject": {
    "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicySubjectReference"
  }
}
```
