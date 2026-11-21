---
title: "accessPackageAssignmentRequiredRule resource type"
description: "Represents a lifecycle policy rule that requires a guest user to have an active access package assignment."
author: "faithwins"
ms.date: 11/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageAssignmentRequiredRule resource type

Namespace: microsoft.graph.identityGovernance

Represents a lifecycle policy rule that requires a guest user to have an active access package assignment.
Inherits from [microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).

## Methods

This resource has no standalone methods. Configure this rule inline in the **rules** collection when [creating a lifecyclePolicy](../api/identitygovernance-lifecycleworkflowscontainer-post-lifecyclepolicies.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
|gracePeriodInDays|Int32|The optional grace period, in days, from the first detected rule violation. If omitted or set to `null`, the containing policy's grace period applies. Set to `0` for no additional grace period. Inherited from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).|
| id | String | The unique identifier for the rule. Inherited from [entity](../resources/entity.md). |
| isEnabled | Boolean | Indicates whether the rule is enabled. Inherited from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.accessPackageAssignmentRequiredRule"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.accessPackageAssignmentRequiredRule",
  "gracePeriodInDays": "Int32",
  "id": "String (identifier)",
  "isEnabled": "Boolean"
}
```
