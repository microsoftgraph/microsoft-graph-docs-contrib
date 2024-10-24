---
author: markwahl-msft
ms.topic: include
---

<!-- Applies to:
- accessPackageCatalog
-->

In delegated scenarios with work or school accounts, the signed-in user must also be assigned an administrator role with supported role permissions through one of the following options:

- A user directly assigned access to the access package via the `specificAllowedTargets` property. **This is the least privileged option.**
- A [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json), where the following least privileged roles are supported for this operation:
    - Access package assignment manager
    - Access package manager
    - Catalog owner
    - Identity Governance Administrator

In app-only scenarios, the calling app can be assigned one of the preceding supported roles instead of the `EntitlementManagement.Read.All` application permission. A user that is assigned access to the access package through the `specificAllowedTargets` property is less privileged than the `EntitlementManagement.Read.All` application permission.

For more information, see [Delegation and roles in entitlement management](/entra/id-governance/entitlement-management-delegate) and [how to delegate access governance to access package managers in entitlement management](/entra/id-governance/entitlement-management-delegate-managers).
