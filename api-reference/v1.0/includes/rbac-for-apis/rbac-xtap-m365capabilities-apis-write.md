---
author: jkdouglas
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts where the signed-in user is acting on another user, they must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. Managing Microsoft 365 cross-tenant capabilities affects the entire cross-tenant access policy, so no lower-privileged built-in role covers all capabilities. This operation supports the following built-in roles:
> - Global Administrator - required for all capabilities, because managing the cross-tenant access policy requires directory-wide privileges.
> - Exchange Administrator - supported only for the MailTips, Calendar Sharing, and Free/Busy capabilities.
