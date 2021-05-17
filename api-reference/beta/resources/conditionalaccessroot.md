---
title: "conditional access resource type"
description: "The **conditionalaccess** resource is the entry point for the Conditinal Access object model. It doesn't contain any usable properties."
localization_priority: Normal
author: "CalebBaker"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalaccess resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **planner** resource is the entry point for the Planner object model. It returns a singleton **planner** resource.  It doesn't contain any usable properties.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create conditionalAccessPolicy](../api/conditionalaccessroot-post-policies.md) |[conditionalAccessPolicy](conditionalaccesspolicy.md)| Create a new **conditionalAccessPolicy** by posting to the conditionalAccessPolicy collection.|
|[Create namedLocations](../api/conditionalaccessroot-post-namedlocations.md) |[namedLocations](namedlocations.md)| Create a new **namedLocations** by posting to the namedLocations collection.|
|[Create authenticationContextClassReferences](../api/conditionalaccess-post-authenticationcontextclassreferences.md)|[authenticationContextClassReferences](authenticationcontextclassreference.md)|Create a new **authenticationContextClassReferences** by posting to authenticationContextClassReferences collection.|


## Properties

The conditionalAccess resource is the entry point for the Conditional Access object model and doesn't contain any properties.

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|conditionalAccessPolicy|[conditionalAccessPolicy](conditionalaccesspolicy.md) collection| Read-only. Nullable. Returns a collection of the specified Conditional Access policies.|
|namedLocations|[namedLocations](conditionalaccessroot-post-namedlocations.md) collection| Read-only. Nullable. Returns a collection of the specified named locations.|
|authenticationContextClassReferences|[authenticationContextClassReferences](authenticationcontextclassreference.md) collection|Read-only. Nullable. Returns a collection of the specified authentication context class references.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "conditional access resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

