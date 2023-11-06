---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

Permissions that allow granting authorization, such as *RoleManagement.ReadWrite.Directory*, allow an application to grant additional privileges to itself, other applications, or any user. Use caution when granting any of these permissions.

With the _RoleManagement.ReadWrite.Directory_ permission an application can read and write `/directoryRoles` and `/roleManagement/directory/*`. This includes adding and removing members to and from directory roles, and working with PIM for Azure AD roles APIs.