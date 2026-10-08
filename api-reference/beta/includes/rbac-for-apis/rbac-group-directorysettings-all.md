---
author: yuhko-msft
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. This operation supports the following built-in roles, which provide only the least privilege necessary:
> 
> - Read basic properties on setting templates and settings - *Microsoft Entra Joined Device Local Administrator*, *Directory Readers*, *Global Reader*
> - Manage all group/directory settings - *Directory Writers*
> - Manage global and local settings for groups; manage `Group.Unified.Guest` and `Group.Unified` settings - *Groups Administrator*
> - Update `Password Rule Settings` - *Authentication Policy Administrator*
> - Update settings, Read basic properties on setting templates and settings - *User Administrator*
>
> When an app is granted delegated *Directory.Read.All* or *Directory.ReadWrite.All* permissions, the signed-in user only needs the default member role. No additional Microsoft Entra role is required. The Microsoft Entra roles listed above are required only when the calling app is granted a more limited delegated permission, such as *GroupSettings.Read.All*. In that case, the signed-in user must hold one of the listed roles.

