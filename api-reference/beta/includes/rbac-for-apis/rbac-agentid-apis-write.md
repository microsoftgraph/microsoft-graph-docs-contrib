---
author: zallison22
ms.topic: include
---

> [!IMPORTANT]
> - A principal who creates an agent identity blueprint or blueprint principal is automatically assigned as the owner.
> - Agent identity blueprint owners can create and modify agent identities created from an agent blueprint they own without being assigned an Agent ID role. 
> - For nonowners to call this API in delegated scenarios using work or school accounts, the admin must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json). This operation supports the following built-in roles, which provide only the least privilege necessary:
>     - Agent ID Administrator - Create and manage all agent identity objects.
>     - Agent ID Developer - Create and manage agent identity blueprints and blueprint principals.
