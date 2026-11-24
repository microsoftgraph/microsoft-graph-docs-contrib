---
title: "assignedPolicyReference resource type"
description: "Provides the abstract base for the **assignedPolicy** property of resourcePolicyAssignment."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# assignedPolicyReference resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides the abstract base for the **assignedPolicy** property of [resourcePolicyAssignment](../resources/resourcepolicyassignment.md).

This type is abstract and can't be instantiated directly. Use the derived [policyDefinitionReference](../resources/policydefinitionreference.md) type, identified by `@odata.type`. No policy-set reference type is exposed by this schema.

## Methods

None.

## Properties

None.

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignedPolicyReference"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignedPolicyReference"
}
```
