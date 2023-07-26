---
title: "defaultUserRolePermissions resource type"
description: "Contains certain customizable permissions of default user role."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "identity-and-sign-in"
doc_type: "resourcePageType"
---

# defaultUserRolePermissions resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains certains customizable permissions of default user role in Azure AD.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| allowedToCreateApps | Boolean | Indicates whether the default user role can create applications. This setting corresponds to the _Users can register applications_ setting in the [User settings menu in the Azure portal](/azure/active-directory/fundamentals/users-default-permissions?context=graph%2Fcontext#restrict-member-users-default-permissions). |  
| allowedToCreateSecurityGroups | Boolean | Indicates whether the default user role can create security groups. This setting corresponds to the following menus in the Azure portal: <br/><li> _The Users can create security groups in Azure portals, API or PowerShell_ setting in the [Group settings menu](/azure/active-directory/enterprise-users/groups-self-service-management). <li> _Users can create security groups_ setting in the [User settings menu](/azure/active-directory/fundamentals/users-default-permissions?context=graph%2Fcontext#restrict-member-users-default-permissions). |  
| allowedToCreateTenants | Boolean | Indicates whether the default user role can create tenants. This setting corresponds to the _Restrict non-admin users from creating tenants_ setting in the [User settings menu in the Azure portal](/azure/active-directory/fundamentals/users-default-permissions?context=graph%2Fcontext#restrict-member-users-default-permissions).<br/><br/> When this setting is `false`, users assigned the [Tenant Creator](/azure/active-directory/roles/permissions-reference?context=graph%2Fcontext#tenant-creator) role can still create tenants. | 
| allowedToReadBitlockerKeysForOwnedDevice | Boolean | Indicates whether the registered owners of a device can read their own BitLocker recovery keys with default user role. |
| allowedToReadOtherUsers | Boolean | Indicates whether the default user role can read other users. |  


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

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
  "allowedToCreateTenants": true
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


