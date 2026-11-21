---
title: "policyDefinitionReference resource type"
description: "Identifies the resource policy definition and version in the **assignedPolicy** property of resourcePolicyAssignment."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# policyDefinitionReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Identifies the resource policy definition and version in the **assignedPolicy** property of [resourcePolicyAssignment](../resources/resourcepolicyassignment.md).

Inherits from [assignedPolicyReference](../resources/assignedpolicyreference.md). Set `@odata.type` to `#microsoft.graph.policyDefinitionReference`.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|policyUniqueName|String|The unique name of the referenced policy definition.|
|version|String|The semantic version of the policy definition to assign.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|policyDefinition|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md)|The referenced policy definition.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyDefinitionReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyDefinitionReference",
  "policyUniqueName": "String",
  "version": "String"
}
```
