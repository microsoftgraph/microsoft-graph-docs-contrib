---
author: psignoret
ms.topic: include
---

> [!IMPORTANT]
> 
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation:
> 
> - Directory Synchronization Accounts - for Microsoft Entra Connect and Microsoft Entra Cloud Sync services
> - Directory Writer
> - Hybrid Identity Administrator
> - Identity Governance Administrator
> - Privileged Role Administrator - the least privileged role supported for Microsoft Graph and Azure AD Graph app roles
> - User Administrator
> - Application Administrator
> - Cloud Application Administrator
>
> The roles listed above aren't required when the signed-in user is a native member of the tenant (member user) and an owner of the resource application. For more information, see [Default user permissions](https://learn.microsoft.com/entra/fundamentals/users-default-permissions).
