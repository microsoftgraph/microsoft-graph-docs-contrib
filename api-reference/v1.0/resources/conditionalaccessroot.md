---
title: "conditionalAccessRoot resource type"
description: "The conditionalAccessRoot resource is the entry point for the Conditional Access (CA) object model. It doesn't contain any usable properties."
ms.localizationpriority: medium
author: "bakerCaleb"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessRoot resource type

Namespace: microsoft.graph

The **conditionalAccessRoot** resource is the entry point for the Conditional Access (CA) object model. It doesn't contain any usable properties.

For more information on Conditional Access in Azure Active Directory, see [What is Conditional Access](/azure/active-directory/conditional-access/overview)?

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|authenticationContextClassReferences|[authenticationContextClassReference](authenticationcontextclassreference.md) collection|Read-only. Nullable. Returns a collection of the specified authentication context class references.|
|namedLocations|[namedLocation](namedlocation.md) collection| Read-only. Nullable. Returns a collection of the specified named locations.|
|policies|[conditionalAccessPolicy](conditionalaccesspolicy.md) collection| Read-only. Nullable. Returns a collection of the specified Conditional Access (CA) policies.|
|templates|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) collection| Read-only. Nullable. Returns a collection of the specified Conditional Access templates.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessRoot"
}-->

```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessRoot"
}
```