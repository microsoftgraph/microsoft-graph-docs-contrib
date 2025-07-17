---
title: "unifiedRolePermission resource type"
description: "A directory role permission is a collection of allowed resource actions and conditions."
ms.localizationpriority: medium
author: "sureshja"
ms.subservice: "entra-directory-management"
doc_type: "resourcePageType"
ms.date: 07/23/2024
ms.custom: sfi-ropc-nochange
---

# unifiedRolePermission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of allowed resource actions and the conditions that must be met for the action to be effective. Resource actions are tasks that can be performed on a resource. For example, the application resource supports create, update, delete, and reset password resource actions.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|allowedResourceActions|String collection| Set of tasks that can be performed on a resource. |
|condition|String| Optional constraints that must be met for the permission to be effective. Not supported for custom roles. |

### allowedResourceActions property

The following is the schema for resource actions: 

```
{Namespace}/{Entity}/{PropertySet}/{Action}  
```
For example: `microsoft.directory/applications/credentials/update`.  

- *{Namespace}* - The services that exposes the task. For example, all tasks in Microsoft Entra ID use the namespace `microsoft.directory`.  
- *{Entity}* - The logical features or components exposed by the service in Microsoft Graph. For example, `applications`, `servicePrincipals`, or `groups`.
- *{PropertySet}* - Optional. The specific properties or aspects of the entity for which access is being granted. For example, 
`microsoft.directory/applications/authentication/read` grants the ability to read the reply URL, logout URL, and implicit flow property on the **application** object in Microsoft Entra ID. The following are reserved names for common property sets:  
  - `allProperties` - Designates all properties of the entity, including privileged properties. Examples include `microsoft.directory/applications/allProperties/read` and `microsoft.directory/applications/allProperties/update`.
  - `basic` - Designates common read properties but excludes privileged ones. For example, `microsoft.directory/applications/basic/update` includes the ability to update standard properties like display name.
  - `standard` - Designates common update properties but excludes privileged ones. For example, `microsoft.directory/applications/standard/read`.
- *{Actions}* - The operations being granted. In most circumstances, permissions should be expressed in terms of CRUD operations or `allTasks`. Actions include:
  - `create` - The ability to create a new instance of the entity.
  - `read` - The ability to read a given property set (including allProperties).
  - `update` - The ability to update a given property set (including allProperties).
  - `delete` - The ability to delete a given entity.
  - `allTasks` - Represents all CRUD operations (create, read, update, and delete). 

### condition property
Conditions define constraints that must be met. For example, a requirement that the principal be an "owner" of the target. The following are the supported conditions:

- Self: "$ResourceIsSelf"
- Owner: "$SubjectIsOwner"

The following is an example of a role permission with a condition.

```json
"rolePermissions": [
        {
            "allowedResourceActions": [
                "microsoft.directory/applications/basic/update",
                "microsoft.directory/applications/credentials/update"
            ],
            "condition":  "$SubjectIsOwner"
        }
    ]

```
Conditions aren't supported for custom roles.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
## Related content

- [Administrator role permissions in Microsoft Entra](/azure/active-directory/users-groups-roles/directory-assign-admin-roles) - For information about permissions for built-in directory roles.
- [Application registration subtypes and permissions in Microsoft Entra ID](/azure/active-directory/users-groups-roles/roles-custom-available-permissions) -  For information about permissions that are available for custom directory roles. 

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "unifiedRolePermission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
