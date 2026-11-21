---
title: "resourcePolicyRule resource type"
description: "Contains the Rego policy and applicability information in the **rule** property of resourcePolicyDefinition."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the Rego policy and applicability information in the **rule** property of [resourcePolicyDefinition](../resources/resourcepolicydefinition.md).

In JSON requests, supply the Rego text as a JSON-escaped string in **policy**. The [create](../api/resourcepolicydefinition-create.md), [update](../api/resourcepolicydefinition-update.md), and [upsert](../api/resourcepolicydefinition-upsert.md) operations also accept `Content-Type: text/plain`, with the unescaped Rego text as the entire request body.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|appliesTo|[policyAppliesTo](../resources/policyappliesto.md)|The resource or action and operations that the policy applies to, extracted from the Rego policy's `__metadata__.selector`. Read-only.|
|policy|String|The Rego policy, represented as a JSON-escaped string in JSON requests and responses. Its package name supplies the definition's unique name and version.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourcePolicyRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyRule",
  "appliesTo": {
    "@odata.type": "microsoft.graph.policyAppliesTo"
  },
  "policy": "String"
}
```
