---
title: "unifiedRoleDefinition resource type"
description: "A role definition is a collection of permissions in Azure Active Directory (Azure AD)."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# unifiedRoleDefinition resource type

Namespace: microsoft.graph

A role definition is a collection of permissions in Azure Active Directory (Azure AD) listing the operations that can be performed and the resources against which they can performed.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List unifiedRoleDefinition](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Read a list of unifiedRoleDefinition objects, and their properties. |
| [Get unifiedRoleDefinition](../api/unifiedroledefinition-get.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Read the properties of a unifiedRoleDefinition object. |
| [Create roleDefinitions](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a unifiedRoleDefinition object. |
| [Update unifiedRoleDefinition](../api/unifiedroledefinition-update.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Update a unifiedRoleDefinition object. |
| [Delete unifiedRoleDefinition](../api/unifiedroledefinition-delete.md) | None | Delete a unifiedRoleDefinition object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String| The description for the unifiedRoleDefinition. Read-only when **isBuiltIn** is `true`. |
|displayName|String| The display name for the unifiedRoleDefinition. Read-only when **isBuiltIn** is `true`. Required.  Supports $filter (`eq`, `in`).|
|id|String| The unique identifier for the role definition. Key, not nullable, Read-only. Inherited from [entity](../resources/entity.md). Supports $filter (`eq`, `in`). |
|isBuiltIn|Boolean| Flag indicating whether the role definition is part of the default set included in Azure Active Directory (Azure AD) or a custom definition. Read-only. Supports $filter (`eq`, `in`). |
|isEnabled|Boolean| Flag indicating whether the role is enabled for assignment. If `false` the role is not available for assignment. Read-only when **isBuiltIn** is true. |
|resourceScopes|String collection| List of the scopes or permissions the role definition applies to. Currently only `/` is supported. Read-only when **isBuiltIn** is true. **DO NOT USE. This will be deprecated soon. Attach scope to role assignment.** | 
|rolePermissions|[unifiedRolePermission](unifiedrolepermission.md) collection| List of permissions included in the role. Read-only when **isBuiltIn** is `true`. Required. |
|templateId|String| Custom template identifier that can be set when **isBuiltIn** is `false` but is read-only when **isBuiltIn** is `true`. This identifier is typically used if one needs an identifier to be the same across different directories. |
|version|String| Indicates version of the role definition. Read-only when **isBuiltIn** is `true`.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|inheritsPermissionsFrom| [unifiedRoleDefinition](unifiedroledefinition.md) collection| Read-only collection of role definitions that the given role definition inherits from. Only Azure AD built-in roles (**isBuiltIn** is `true`) support this attribute. Supports `$expand`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleDefinition",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.unifiedRoleDefinition",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isBuiltIn": "Boolean",
  "isEnabled": "Boolean",
  "resourceScopes": [
    "String"
  ],
  "rolePermissions": [
    {
      "@odata.type": "microsoft.graph.unifiedRolePermission"
    }
  ],
  "templateId": "String",
  "version": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRoleDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

