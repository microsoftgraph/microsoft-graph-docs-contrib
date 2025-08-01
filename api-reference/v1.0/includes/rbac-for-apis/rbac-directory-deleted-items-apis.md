---
author: ombongifaith
ms.topic: include
---

> [!IMPORTANT]
> 
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.
> - Administrative units: Directory Readers (read-only), Global Readers (read-only), Privileged Role Administrator
> - Applications: Hybrid Identity Administrator, Cloud Application Administrator, Application Administrator
> - External user profiles: Global Reader (read-only), Skype for Business Administrator, Teams Administrator
> - Groups: Groups Administrator (except for role-assignable groups), User Administrator (except for role-assignable groups), Privileged Role Administrator (least privileged role for role-assignable groups)
> - Pending external user profiles: Global Reader (read-only), Skype for Business Administrator, Teams Administrator
> - Service principals: Hybrid Identity Administrator, Cloud Application Administrator, Application Administrator
> - Users: Authentication Administrator, Privileged Authentication Administrator, User Administrator. However, to restore users with privileged administrator roles:
>   - In delegated scenarios, the app must be assigned the *Directory.AccessAsUser.All* delegated permission, and the calling user must also be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions?](/graph/api/resources/users#who-can-perform-sensitive-actions).
>   - In app-only scenarios and in addition to being granted the *User.ReadWrite.All* application permission, the app must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions?](/graph/api/resources/users#who-can-perform-sensitive-actions).