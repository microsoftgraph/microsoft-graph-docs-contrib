---
title: "defaultUserRolePermissions resource type"
description: "Contains certain customizable permissions of default user role."
ms.localizationpriority: medium
author: "DougKirschner"
ms.reviewer: msodsrbac
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# defaultUserRolePermissions resource type

Contains certain customizable permissions of default user role in Microsoft Entra ID.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| allowedToCreateApps | Boolean | Indicates whether the default user role can create applications. This setting corresponds to the _Users can register applications_ setting in the [User settings menu in the Microsoft Entra admin center](/azure/active-directory/fundamentals/users-default-permissions?context=graph%2Fcontext#restrict-member-users-default-permissions). |  
| allowedToCreateSecurityGroups | Boolean | Indicates whether the default user role can create security groups. This setting corresponds to the following menus in the Microsoft Entra admin center: <br/><li> _The Users can create security groups in Microsoft Entra admin centers, API or PowerShell_ setting in the [Group settings menu](/azure/active-directory/enterprise-users/groups-self-service-management). <li> _Users can create security groups_ setting in the [User settings menu](/azure/active-directory/fundamentals/users-default-permissions?context=graph%2Fcontext#restrict-member-users-default-permissions). |  
| allowedToCreateTenants | Boolean | Indicates whether the default user role can create tenants. This setting corresponds to the _Restrict non-admin users from creating tenants_ setting in the [User settings menu in the Microsoft Entra admin center](/azure/active-directory/fundamentals/users-default-permissions?context=graph%2Fcontext#restrict-member-users-default-permissions). <br/><br/> When this setting is `false`, users assigned the [Tenant Creator](/entra/identity/role-based-access-control/permissions-reference?context=graph%2Fcontext#tenant-creator) role can still create tenants.| 
|permissionGrantPoliciesAssigned|String collection|Indicates if user consent to apps is allowed, and if it is, which permission to grant consent and which app consent policy (permissionGrantPolicy) govern the permission for users to grant consent. Value should be in the format `managePermissionGrantsForSelf.{id}`, where `{id}` is the **id** of a built-in or custom [app consent policy](/azure/active-directory/manage-apps/manage-app-consent-policies). An empty list indicates user consent to apps is disabled. |
| allowedToReadBitlockerKeysForOwnedDevice | Boolean | Indicates whether the registered owners of a device can read their own BitLocker recovery keys with default user role. |
| allowedToReadOtherUsers | Boolean | Indicates whether the default user role can read other users. **DO NOT SET THIS VALUE TO `false`**. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.defaultUserRolePermissions"
}-->

```json
{
  "allowedToCreateApps": true,
  "allowedToCreateSecurityGroups": true,
  "allowedToReadBitlockerKeysForOwnedDevice": true,
  "allowedToReadOtherUsers": true,
  "allowedToCreateTenants": true,
  "permissionGrantPoliciesAssigned": ["String"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "defaultUserRolePermissions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
