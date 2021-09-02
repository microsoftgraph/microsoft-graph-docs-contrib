---
title: "roleManagement resource type"
description: "Microsoft 365 role-based access control (RBAC) resource."
localization_priority: Normal
ms.localizationpriority: medium
author: "abhijeetsinha"
ms.prod: "directory-management"
doc_type: "resourcePageType"
---

# roleManagement resource type

Namespace: microsoft.graph

Represents a Microsoft 365 role-based access control (RBAC) role management entity. This resource provides access to role definitions and role assignments surfaced from RBAC providers. **directory** (Azure Active Directory) and **deviceManagement** (Intune) providers are currently supported.

For more information, see: 
* [Administrator role permissions in Azure Active Directory](/azure/active-directory/roles/custom-overview).
* [Role-based access control (RBAC) with Microsoft Intune](/mem/intune/fundamentals/role-based-access-control)

## Methods

None.

## Properties

None.

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|directory|[rbacApplication](rbacapplication.md)| Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

```json
{
    "directory": {"@odata.type": "microsoft.graph.rbacApplication"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "roleManagement resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->