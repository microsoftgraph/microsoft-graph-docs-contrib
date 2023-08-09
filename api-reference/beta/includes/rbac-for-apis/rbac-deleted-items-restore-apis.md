---
author: keylimesoda
ms.topic: include
---

For delegated scenarios, the calling user needs to have one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json).

- To restore deleted applications or service principals:  *Application Administrator*, *Cloud Application Administrator*, or *Hybrid Identity Administrator*.
- To restore deleted users: *User Administrator*. However, to restore users with privileged administrator roles, the app must be assigned the *Directory.AccessAsUser.All* delegated permission, and the calling user must also be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions?](/graph/api/resources/users#who-can-perform-sensitive-actions)
- To restore deleted groups: *Groups Administrator*. However, to restore role-assignable groups, the calling user must be assigned the *Privileged Role Administrator* role.

In app-only scenarios and in addition to being granted the *User.ReadWrite.All* application permission, the app must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions?](/graph/api/resources/users#who-can-perform-sensitive-actions)