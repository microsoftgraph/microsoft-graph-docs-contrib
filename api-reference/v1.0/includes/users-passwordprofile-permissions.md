---
author: "yyuank"
ms.subservice: entra-users
ms.topic: include
---

<!-- markdownlint-disable MD041-->

- In delegated access, the calling app must be assigned the *Directory.AccessAsUser.All* delegated permission on behalf of the signed-in user.
- In application-only access, the calling app must be assigned the *User.ReadWrite.All* (least privilege) or *Directory.ReadWrite.All* (higher privilege) application permission *and* at least the *User Administrator* [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).
