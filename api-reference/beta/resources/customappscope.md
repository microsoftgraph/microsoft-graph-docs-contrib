---
title: "customAppScope resource type"
description: "Represents a customized RBAC scope object from each provider."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# customAppScope resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a customized RBAC scope object from each provider. This resource is a subtype of [appScope](appscope.md), which is a scope defined and understood by a specific application. A custom app scope has its own lifecycle for role assignment objects across various RBAC providers. A custom app scope can also store custom attributes sourced from different RBAC providers.

For example, in the Exchange Online provider, **customAppScope** maps to [management role scope](/exchange/understanding-management-role-scopes-exchange-2013-help) that can be managed separately by Exchange administrators. The CRUD operations for **customAppScope** entities are supported. You can use the ID of a **customAppScope** as the **appScopeId** of a [unifiedRoleAssignment](unifiedroleassignment.md).

Currently only the Exchange Online RBAC provider is supported.

Inherits from [appScope](appscope.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List customAppScope](../api/unifiedrbacapplication-list-customappscopes.md) | [customAppScope](customappscope.md) collection | Get a list of [customAppScope](../resources/customappscope.md) objects for an RBAC provider. |
| [Create customAppScope](../api/unifiedrbacapplication-post-customappscope.md) | [customAppScope](customappscope.md) | Create a new [customAppScope](../resources/customappscope.md) object for an RBAC provider. |
| [Get customAppScope](../api/customappscope-get.md) | [customAppScope](customappscope.md) | Get the properties of a [customAppScope](../resources/customappscope.md) object for an RBAC provider. |
| [Update customAppScope](../api/customappscope-update.md)| None | Update an existing [customAppScope](../resources/customappscope.md) object of an RBAC provider.|
| [Delete customAppScope](../api/customappscope-delete.md) | None | Delete a [customAppScope](../resources/customappscope.md) object of an RBAC provider. |

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| customAttributes | [customAppScopeAttributesDictionary](customappscopeattributesdictionary.md) | An open dictionary type that holds workload-specific properties for the scope object. |
| displayName | String | The display name of the app-specific resource represented by the app scope. Provided for display purposes since the **appScopeId** is often an immutable, non-human-readable ID. Read-only. Inherited from [appScope](appscope.md). |
| id | String | The unique identifier of an app-specific container or resource that represents the scope of the assignment. Usually the immutable ID of the resource. The scope of an assignment determines the set of resources for which the principal has been granted access. Required. Inherited from [appScope](appscope.md). |
| type | String | The type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app-specific resource represented by the app scope. Read-only. Inherited from [appScope](appscope.md). |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customAppScope"
}
-->
```json
{
  "customAttributes": {
    "@odata.type": "microsoft.graph.customAppScopeAttributesDictionary"
  },
  "displayName": "String",
  "id": "String (identifier)",
  "type": "String"
}
```
