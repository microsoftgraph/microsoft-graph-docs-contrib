---
title: "slaPolicyConditionBase resource type"
description: "Represents the abstract base for conditions in an SLA policy criteria block."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# slaPolicyConditionBase resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base for objects in the **conditions** property of an [slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md).

This is an abstract complex type and can't be instantiated directly. It has no key or properties. Use one of the following derived types:

- [slaPolicyCondition](../resources/security-casemanagement-slapolicycondition.md), which compares a case property with one or more values.
- [slaPolicyCriteriaBlock](../resources/security-casemanagement-slapolicycriteriablock.md), which combines conditions with a logical operator.

For request bodies, use `@odata.type` to specify the concrete condition type: `#microsoft.graph.security.caseManagement.slaPolicyCondition` for a leaf condition or `#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock` for a group. The maximum nesting depth is two.

## Methods

None.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. This abstract type can't be instantiated directly; use one of its derived types when supplying a condition object.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyConditionBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyConditionBase"
}
```
