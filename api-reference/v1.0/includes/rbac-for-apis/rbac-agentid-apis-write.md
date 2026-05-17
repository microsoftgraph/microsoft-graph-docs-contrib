---
author: zallison22
ms.topic: include
---

> [!IMPORTANT]
> - A principal who creates a blueprint or blueprint principal is assigned as the owner. Owners can create agent identities and modify only the resources they own, even if they aren't assigned an Agent ID role.
> - For nonowners to call this API in delegated scenarios using work or school accounts, the admin must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). This operation supports the following built-in roles, which provide only the least privilege necessary:
>     - Agent ID Administrator.
>     - Agent ID Developer - Create agent identity blueprints and blueprint principals.
