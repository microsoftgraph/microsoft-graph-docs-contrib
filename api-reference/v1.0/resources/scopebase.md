---
title: "scopeBase resource type"
description: "Abstract base type representing a scope identifier for users, groups, or the tenant within policy bindings."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# scopeBase resource type

Namespace: microsoft.graph

Abstract base type representing a scope identifier for users, groups, or the tenant within policy bindings.

Use [groupScope](../resources/groupscope.md) for groups, [userScope](../resources/userscope.md) for individual users or [tenantScope](../resources/tenantscope.md) for all users in the tenant.

> **Note**: This is an abstract type and won't be instantiated directly. It serves as a base for more specific scope types like `groupScope`, `userScope` and `tenantScope`.

## Properties

| Property | Type   | Description                                                                                        |
| :------- | :----- | :------------------------------------------------------------------------------------------------- |
| identity | String | The identifier for the scope. This could be a user ID, group ID, or a keyword like "All" for tenant scope. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type. 
>**Note** This is an abstract type and won't be instantiated directly.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.scopeBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.scopeBase",
  "identity": "String"
}
```
