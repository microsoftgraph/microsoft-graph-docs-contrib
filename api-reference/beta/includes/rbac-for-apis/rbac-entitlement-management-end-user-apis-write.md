---
author: markwahl-msft
ms.topic: include
---

<!-- Applies to:
- accessPackageAssignmentRequest: filterByCurrentUser
- Create accessPackageAssignmentRequest
-->

> [!TIP]
> In delegated scenarios with work or school accounts, the signed-in user must also be assigned an administrator role with supported role permissions through one of the following options:
> 
> - A user who is specified in the `specificAllowedTargets` property of the access package's policies. **This is the least privileged option**.
> - More privileged [roles in the Entitlement Management system](/entra/id-governance/entitlement-management-delegate) where the least privileged roles are supported for this operation:
>     - Access package assignment manager
>     - Access package manager
>     - Catalog owner
> - More privileged [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json), where the following least privileged roles are supported for this operation:
>     - Identity Governance Administrator
> 
> In app-only scenarios, the calling app can be assigned one of the preceding supported roles instead of the `EntitlementManagement.ReadWrite.All` application permission. A user who is specified in the `specificAllowedTargets` property of the access package's policies is less privileged than the `EntitlementManagement.ReadWrite.All` application permission.
> 
> For more information, see [Delegation and roles in entitlement management](/entra/id-governance/entitlement-management-delegate) and [how to delegate access governance to access package managers in entitlement management](/entra/id-governance/entitlement-management-delegate-managers).
