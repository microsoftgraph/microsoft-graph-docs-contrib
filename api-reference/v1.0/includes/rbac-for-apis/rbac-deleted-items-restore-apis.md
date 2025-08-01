---
author: ombongifaith
ms.topic: include
---

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
>
> - To restore deleted applications or service principals:  *Application Administrator*, *Cloud Application Administrator*, or *Hybrid Identity Administrator*.
> - To restore deleted users: *User Administrator*. However, to restore users with privileged administrator roles:
>   - In delegated scenarios, the app must be assigned the *Directory.AccessAsUser.All* delegated permission, and the calling user must also be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions?](/graph/api/resources/users#who-can-perform-sensitive-actions).
>   - In app-only scenarios and in addition to being granted the *User.ReadWrite.All* application permission, the app must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions?](/graph/api/resources/users#who-can-perform-sensitive-actions).
> - To restore deleted groups: *Groups Administrator*. However, to restore role-assignable groups, the calling user must be assigned the *Privileged Role Administrator* role.
