---
title: "accessPackageAssignmentRequiredRule resource type"
description: "Represents a lifecycle policy rule that requires a guest user to have an active access package assignment."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# accessPackageAssignmentRequiredRule resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a lifecycle policy rule that requires a guest user to have an active access package assignment.
Inherits from [microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).

## Methods

This resource is part of a polymorphic collection managed by the [lifecyclePolicyRule resource](../resources/identitygovernance-lifecyclepolicyrule.md) base type. Operations are performed through the base type endpoints.

## Properties

| Property | Type | Description |
|:---|:---|:---|
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
  "id": "String (identifier)",
  "isEnabled": "Boolean"
}
```
