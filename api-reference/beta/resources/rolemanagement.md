---
title: "roleManagement resource type"
description: "RBAC role management resource"
localization_priority: Normal
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# roleManagement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft 365 RBAC role management entity that provides access to role definitions and role assignments surfaced from RBAC providers. 

The following RBAC providers are currently supported:
- cloud PC 
- device management (Intune)
- directory (Azure AD) 
 

For more information, see: 
* [Administrator role permissions in Azure Active Directory](/azure/active-directory/users-groups-roles/directory-assign-admin-roles).
* [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control)

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|cloudPC|[rbacApplicationMultiple](rbacapplicationmultiple.md)| Read-only. Nullable. Cloud PC unified RBAC enable IT admins to interact with not only Cloud PC RBAC but all M365 RBACs including AAD with a single set of APIs.|
|deviceManagement|[rbacApplicationMultiple](rbacapplicationmultiple.md)| Read-only. Nullable.|
|directory|[rbacApplication](rbacapplication.md)| Read-only. Nullable.|


## JSON representation

None.

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "roleManagement resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
