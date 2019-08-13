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
Resource actions are tasks that can be perfomed on a resource. For example, the application resource supports create, update, delete, and reset password resource actions.

## Allowed resource actions
The schema for resource actions loosely follows the REST format of [Microsoft Graph](https://docs.microsoft.com/graph/use-the-api):  

<Namespace>/<Entity>/<PropertySet>/<Action>.

For example, if you wanted create a role that allowed the update of an application's credentials, the resource action would look like this:

'''microsoft.directory/applications/credentials/update'''

### Namespaces
Namespaces are the services that exposes the task. For example, all tasks in Azure Active Directory use the namespace '''microsoft.directory'''.  

### Entities
Entities are the logical features or components exposed by the service in Microsoft Graph. For example, Applications, Service Principals, Groups, etc.

### Property sets
Property sets are the specific properties or aspects of the entity for which access is being granted. For example, 
"microsoft.directory/applications/authentication/read" grants the ability to read the reply URL, logout URL, and implicit flow property on the Application object in Azure AD.

There is a set of reserved names for common Property Sets:  
- **allProperties**: designates all properties of the entity, including privileged properties. Examples include "microsoft.directory/applications/allProperties/read" and "microsoft.directory/applications/allProperties/update".
- **basic**: designates common read properties but excludes privileged ones. For example, "microsoft.directory/applications/basic/update" includes the ability to update standard properties like display name.
- **standard**: designates common update properties but excludes privileged ones. For example, "microsoft.directory/applications/standard/read".

### Actions
Actions are the operations being granted, most typically Create, Read, Update, or Delete (CRUD). In all but rare circumstances, 
permissions should be expressed in terms of CRUD or allTasks. Actions include:
- **create**: ability to create a new instance of the Entity.
- **read**: ability to read a given Property Set (including allProperties).
- **update**: ability to update a given Property Set (including all Properties).
- **delete**: ability to delete a given Entity.
- **allTasks**: shorthand meaning all of the above abilities (create, read, update, and delete). 

## Conditions
Conditions define constraints that must be met. Requiring that the principal be an "owner" of the target is an example of a condition. The supported conditions are:
- **Self**: "@Subject.objectId == @Resource.objectId"
- **Owner**: "@Subject.objectId Any_of @Resource.owners"

The below example role permission allows updating basic properties and credential properties of applications, but only when the assigned principal is the owner of the target resource:

```json
"rolePermissions": [
        {
            "allowedResourceActions": [
                "microsoft.directory/applications/basic/update",
                "microsoft.directory/applications/credentials/update"
            ],
            "condition":  "@Subject.objectId Any_of @Resource.owners"
        }
    ]

```

For more information on permissions of built-in directory roles see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles). For more information on permissions available for custom directory roles see [Application registration subtypes and permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/roles-custom-available-permissions). 

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
