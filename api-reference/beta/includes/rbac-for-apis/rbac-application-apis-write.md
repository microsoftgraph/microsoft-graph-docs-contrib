---
author: Jackson-Woods
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the admin must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. This operation supports the following built-in roles, which provide only the least privilege necessary:
> - A non-admin member or guest who has default user permissions, unless [the tenant admin restricted access](/entra/fundamentals/users-default-permissions#restrict-member-users-default-permissions).
> - Application Developer. This role can create apps even when the admin restricted access to members and guests. The principal with this role is assigned ownership of the app they create.
> - Directory Writers. This role can update extension properties.
> - Hybrid Identity Administrator. This role can update only basic properties.
> - Security Administrator
> - Cloud Application Administrator
> - Application Administrator
>
>
> In delegated scenarios using work or school accounts, the following privileges are supported for managing agent identity blueprints:
>  - The signed-in user is the owner, or
>  - The signed-in user is assigned the *Agent ID Administrator* role.
