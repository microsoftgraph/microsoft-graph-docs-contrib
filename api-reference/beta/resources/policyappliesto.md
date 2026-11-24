---
title: "policyAppliesTo resource type"
description: "Describes the target resource or action and operations in the **appliesTo** property of resourcePolicyRule."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# policyAppliesTo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the target resource or action and operations in the **appliesTo** property of [resourcePolicyRule](../resources/resourcepolicyrule.md).

The service computes these read-only properties from the Rego policy's `__metadata__.selector`. The selector must contain a supported **resourceName** and a nonempty **operations** array. Resource names and operation names are case-sensitive. Specify operation names as strings in the Rego array, such as `["create", "updateOrUpsert"]`; the JSON response represents the selected operations as a flagged enumeration.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|includeDerivedTypes|Boolean|Indicates whether applicability includes derived resource types. The default is `true` for resource targets. Action targets use exact matching; omit **includeDerivedTypes** from the metadata selector for action targets. Read-only.|
|operations|[policyApplicableOperations](../resources/enums.md#policyapplicableoperations-values)|The operations extracted from `__metadata__.selector.operations`. Specify at least one of `create`, `updateOrUpsert`, `delete`, or `invokeAction` in the selector; use `invokeAction` for action targets. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `create`, `updateOrUpsert`, `delete`, `invokeAction`, `unknownFutureValue`. Read-only.|
|resourceName|String|The entity type name or fully qualified action name extracted from `__metadata__.selector.resourceName`, such as `microsoft.graph.application` or `microsoft.graph.application/microsoft.graph.addPassword`. Supports `$filter` (`eq`) through **rule/appliesTo/resourceName** on policy definitions. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyAppliesTo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyAppliesTo",
  "operations": "String",
  "resourceName": "String",
  "includeDerivedTypes": "Boolean"
}
```
