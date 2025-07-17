---
title: "unifiedRoleDefinition resource type"
description: "A unified role definition is a collection of permissions"
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-directory-management"
doc_type: "resourcePageType"
toc.title: Role definition
ms.date: 07/22/2024
---

# unifiedRoleDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of permissions listing the operations, such as read, write, and delete, that can be performed by an RBAC provider, as part of Microsoft 365 RBAC [role management](rolemanagement.md).

The following RBAC providers are currently supported:
- Cloud PC 
- device management (Intune)
- directory (Microsoft Entra ID) 
- entitlement management (Microsoft Entra Entitlement Management)
- Exchange Online


## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Read a list of unifiedRoleDefinition objects, and their properties. |
| [Create](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a unifiedRoleDefinition object. |
| [Get](../api/unifiedroledefinition-get.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Read the properties of a unifiedRoleDefinition object. |
| [Update](../api/unifiedroledefinition-update.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Update a unifiedRoleDefinition object. |
| [Delete](../api/unifiedroledefinition-delete.md) | None | Delete a unifiedRoleDefinition object. |
| [List assigned principals](../api/unifiedroledefinition-assignedprincipals.md) | [directoryObject](../resources/directoryobject.md) collection|Get the users and groups assigned to a role across all scopes.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedPrincipalTypes|allowedRolePrincipalTypes|Types of principals that can be assigned the role. Read-only. The possible values are: `user`, `servicePrincipal`, `group`, `unknownFutureValue`. This is a multi-valued enumeration that can contain up to three values as a comma-separated string. For example, `user, group`. Supports `$filter` (`eq`).|
|description|String| The description for the unifiedRoleDefinition. Read-only when **isBuiltIn** is `true`. |
|displayName|String| The display name for the unifiedRoleDefinition. Read-only when **isBuiltIn** is `true`. Required.  Supports `$filter` (`eq` and `startsWith`).|
|id|String| The unique identifier for the unifiedRoleDefinition. Key, not nullable, Read-only.  Supports `$filter` (`eq` operator only). |
|isBuiltIn|Boolean| Flag indicating if the unifiedRoleDefinition is part of the default set included with the product or custom. Read-only.  Supports `$filter` (`eq`).|
|isEnabled|Boolean| Flag indicating if the role is enabled for assignment. If false the role is not available for assignment. Read-only when **isBuiltIn** is `true`. |
|isPrivileged|Boolean| Flag indicating if the role is privileged. Microsoft Entra ID defines a role as privileged if it contains at least one sensitive resource action in the **rolePermissions** and **allowedResourceActions** objects. Applies only for actions in the `microsoft.directory` resource namespace. Read-only. Supports `$filter` (`eq`).|
|resourceScopes|String collection| List of scopes permissions granted by the role definition apply to. Currently only `/` is supported. Read-only when isBuiltIn is `true`. **DO NOT USE. This will be deprecated soon. Attach scope to role assignment**.| 
|rolePermissions|[unifiedRolePermission](unifiedrolepermission.md) collection| List of permissions included in the role. Read-only when **isBuiltIn** is `true`. Required. |
|templateId|String| Custom template identifier that can be set when isBuiltIn is `false`. This identifier is typically used if one needs an identifier to be the same across different directories. Read-only when **isBuiltIn** is `true`. |
|version|String| Indicates the version of the unifiedRoleDefinition object. Read-only when **isBuiltIn** is `true`.|

## Relationships

| Relationship | Type    |Description|
|:---------------|:--------|:----------|
|inheritsPermissionsFrom| [unifiedRoleDefinition](unifiedroledefinition.md) collection| Read-only collection of role definitions that the given role definition inherits from. Only Microsoft Entra built-in roles support this attribute. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.unifiedRoleDefinition",
  "keyProperty": "id"
}-->

```json
{
  "allowedPrincipalTypes": "String",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isBuiltIn": true,
  "isEnabled": true,
  "isPrivileged": true,
  "resourceScopes": ["String"],
  "rolePermissions": [{"@odata.type": "microsoft.graph.unifiedRolePermission"}],
  "templateId": "String",
  "inheritsPermissionsFrom": [{"@odata.type": "microsoft.graph.unifiedRoleDefinition"}],
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
