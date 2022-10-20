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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
|policies|[conditionalAccessPolicy](conditionalaccesspolicy.md) collection| Read-only. Nullable. Returns a collection of the specified Conditional Access policies.|
|templates|[conditionalAccessTemplate](../resources/conditionalaccesstemplate.md) collection| Read-only. Nullable. Returns a collection of the specified Conditional Access templates.|
|authenticationStrengths|[authenticationStrengthRoot](authenticationstrengthroot.md)|Defines the authentication strength policies, valid authentication method combinations, and authentication method mode details that can be required by a conditional access policy .|

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