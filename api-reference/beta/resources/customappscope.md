---
title: "customAppScope resource type"
description: "A custom app scope is a customized RBAC scope object from each provider."
ms.localizationpriority: medium
author: "bili1"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# customAppScope resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

CustomAppScope is subtype of [appScope](appscope.md) which is a scope defined and understood by a specific application. It is to represent the appScope object that have independent lifecycle of role assignment objects in different RBAC providers. Rest of app scopes are contaiment entities like shared directory objects. Besides, custom app scope can hold custom attributes from different RBAC providers.

For example, in Exchange Online provider customAppScope maps to [management role scope](/exchange/understanding-management-role-scopes-exchange-2013-help) which can be managed sperately by exchange administrators. As such, methods for listing, creating, updating, and deleting customAppScope entities are supported. The id of customAppScope can be used as appScopeId of [unifiedRoleAssignment](unifiedroleassignment.md).

Currently only Exchange Online provider is supported.

## Methods
| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List customAppScope](../api/unifiedrbacapplication-list-customappscopes.md) | [customAppScope](customAppScope.md) | Read a list of customAppScope objects and their properties. |
| [Get customAppScope](../api/unifiedrbacapplication-get-customappscope.md) | [customAppScope](customAppScope.md) | Read properties of target customAppScope object. |
| [Create customAppScope](../api/unifiedrbacapplication-post-customappscope.md) | [customAppScope](customAppScope.md) | Create a new customAppScope by posting to the customAppScope collection. |
| [Update customAppScope](../api/unifiedrbacapplication-update-customappscope.md)| None | Update an existing customAppScope object.|
| [Delete customAppScope](../api/unifiedrbacapplication-delete-customappscope.md) | None | Delete an existing customAppScope object. |

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| id | string | Id of an app-specific container or resource representing the scope of the assignment. Usually the immutable id of the resource. The scope of an assignment determines the set of resources for which the principal has been granted access. This property is required. |
| type | String | Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. This property is read only. |
| displayName | string | Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. This property is read only. |
| customAttributes | Org.OData.Core.V1.Dictionary | An open type dictionary that holds workload specific properties for scope object. |

## Relationships

None

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
  "id": "String (identifier)",
  "type": "String",
  "displayName": "String",
  "customAttributes": {}
}
```