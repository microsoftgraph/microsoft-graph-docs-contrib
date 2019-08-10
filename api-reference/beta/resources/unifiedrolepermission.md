---
title: "unifiedRolePermission resource type"
description: "A directory role permission is a collection of allowed resource actions and conditions."
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# unifiedRolePermission resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A role permission is a collection of allowed resource actions and the conditions that must be met for the action to be effective. 
Resource actions are tasks that can be perfomed on a resource. For example, the user resource may support create, update, delete, and reset password resource actions.
Conditions define constraints that must be met. Requiring that the principal be an "owner" of the target is an example of a condition. For more information on permissions of built-in directory roles see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles). For more information on permissions available for custom directory roles see [Application registration subtypes and permissions in Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/roles-custom-available-permissions). 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedResourceActions|String collection| Set of tasks that can be perfomed on a resource. |
|condition|String| Optional constraints that must be met for the permission to be effective. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRolePermission",
  "baseType": null
}-->

```json
{
  "allowedResourceActions": ["String"],
  "condition": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRolePermission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
