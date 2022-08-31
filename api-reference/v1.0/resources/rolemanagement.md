---
title: "roleManagement resource type"
description: "Microsoft 365 role-based access control (RBAC) resource."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# roleManagement resource type

Namespace: microsoft.graph

Represents a Microsoft 365 role-based access control (RBAC) role management entity. This resource provides access to role definitions and role assignments surfaced from RBAC providers. **directory** (Azure Active Directory), **entitlementManagement**,  and **deviceManagement** (Intune) providers are currently supported.

For more information, see: 
* [Administrator role permissions in Azure Active Directory](/azure/active-directory/roles/custom-overview).
* [Delegation and roles in Azure AD entitlement management](/azure/active-directory/governance/entitlement-management-delegate).
* [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control)

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|directory|[rbacApplication](rbacapplication.md)| Read-only. Nullable.|
|entitlementManagement|[rbacApplication](rbacapplication.md)| Container for roles and assignments for [entitlement management](entitlementmanagement.md) resources.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.roleManagement",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleManagement"
}
```