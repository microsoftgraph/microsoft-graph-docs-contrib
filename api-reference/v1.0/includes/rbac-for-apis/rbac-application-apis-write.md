---
author: Jackson-Woods
ms.topic: include
---

In delegated scenarios with work or school accounts, the admin must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.

- A nonadmin member or guest with default user permissions, unless [the tenant admin has restricted access](/entra/fundamentals/users-default-permissions#restrict-member-users-default-permissions)
- Application Developer - create apps even when the admin has restricted access to members and guests; the principal with this role is assigned ownership of the app they create
- Directory Writers - update extension properties
- Hybrid Identity Administrator - update only basic properties
- Security Administrator
- Cloud Application Administrator
- Application Administrator
