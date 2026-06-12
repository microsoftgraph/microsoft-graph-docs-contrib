---
author: simranm
ms.topic: include
---

<!-- Applies to:
- accessPackageAssignmentRequest: cancel
-->

> [!TIP]
> The role and permission required for delegated access using work or school accounts depend on whose request is being canceled.
>
> **End users canceling their own request:**
> - The signed-in user **doesn't need** an administrator role.
> - The least privileged permission is `EntitlementMgmt-SubjectAccess.ReadWrite`.
>
> **Administrators canceling requests submitted by others:**
> - The signed-in user **must** be assigned a supported administrator role *(or the caller must hold the `EntitlementManagement.ReadWrite.All` permission, which is the least privileged permission for this scenario)*.
> - Supported roles, from least to most privileged:
>     - A [role in the Entitlement Management system](/entra/id-governance/entitlement-management-delegate):
>         - *Access package assignment manager*. **This is the least privileged option**
>         - *Access package manager*
>         - *Catalog owner*
>     - A more privileged [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
>         - *Identity Governance Administrator*
>
> For more information, see [Delegation and roles in entitlement management](/entra/id-governance/entitlement-management-delegate) and [how to delegate access governance to access package managers in entitlement management](/entra/id-governance/entitlement-management-delegate-managers).
