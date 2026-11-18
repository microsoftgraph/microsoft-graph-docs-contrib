---
title: "resourcePolicyRoot resource type"
description: "Provides access to resource policy definitions, assignments, tenant-wide configuration, deleted items, and policy evaluation under /admin/resourcePolicy."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides access to resource policy definitions, assignments, tenant-wide configuration, deleted items, and policy evaluation under `/admin/resourcePolicy`.

Resource policies use policy-as-code to evaluate Microsoft Graph resource changes. Define rules in Rego, assign a definition version at tenant scope, and evaluate requests before enabling enforcement. Evaluation and enforcement are distinct: `doNotEnforce` records outcomes without applying the effect; `enforce` applies the effect.

Access this container through the **resourcePolicy** relationship of [admin](../resources/admin.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List definitions](../api/resourcepolicyroot-list-definitions.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|List customer-authored definitions.|
|[List built-in definitions](../api/resourcepolicyroot-list-builtindefinitions.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|List read-only Microsoft-authored definitions.|
|[List assignments](../api/resourcepolicyroot-list-assignments.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md) collection|List assignments.|
|[Evaluate assigned policies](../api/resourcepolicyroot-evaluateassignedpolicies.md)|[policiesEvaluationResult](../resources/policiesevaluationresult.md)|Evaluate the applicable assignments for an API request.|
|[Evaluate policy](../api/resourcepolicyroot-evaluatepolicy.md)|[policiesEvaluationResult](../resources/policiesevaluationresult.md)|Evaluate an inline Rego policy for an API request.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md) collection|The policy assignments in the tenant.|
|builtInDefinitions|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|The read-only Microsoft-authored policy definitions available to the tenant. Built-in definitions and their previous versions can't be created, updated, or deleted by callers.|
|configuration|[resourcePolicyConfiguration](../resources/resourcepolicyconfiguration.md)|The tenant-wide resource policy configuration singleton.|
|definitions|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|The customer-authored policy definitions.|
|deletedItems|[resourcePolicyDeletableRoot](../resources/resourcepolicydeletableroot.md)|The container for deleted definitions and assignments.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourcePolicyRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyRoot"
}
```
