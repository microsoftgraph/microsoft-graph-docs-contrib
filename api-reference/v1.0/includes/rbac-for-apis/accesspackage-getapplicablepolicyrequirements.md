---
author: simranm
ms.topic: include
---

<!-- Applies to:
- accessPackage: getApplicablePolicyRequirements
-->

> [!TIP]
> The role and permission required for delegated access using work or school accounts depend on the caller's scenario.
>
> **End users retrieving policies for their own requests:**
> - The signed-in user **doesn't need** an administrator role.
> - The least privileged permission is `EntitlementMgmt-SubjectAccess.ReadWrite`.
>
> **Administrators retrieving policies for assignment operations:**
> - The least privileged permission is `EntitlementManagement.Read.All`.
> - The signed-in user **must** be assigned a supported administrator role. Supported roles, from least to most privileged:
>     - A [role in the Entitlement Management system](/entra/id-governance/entitlement-management-delegate):
>         - *Access package assignment manager*. **This is the least privileged option**
>         - *Access package manager*
>         - *Catalog owner*
>     - A more privileged [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
>         - *Identity Governance Administrator*
>
> For more information, see [Delegation and roles in entitlement management](/entra/id-governance/entitlement-management-delegate) and [how to delegate access governance to access package managers in entitlement management](/entra/id-governance/entitlement-management-delegate-managers).
