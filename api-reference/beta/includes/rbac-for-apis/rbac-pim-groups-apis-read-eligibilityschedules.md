---
author: ilyalushnikov
ms.topic: include
ms.date: 04/07/2023
ms.author: ilyalushnikov
---

The calling user must also be the owner or member of the group or be assigned at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).
- For role-assignable groups: *Global Reader* or *Privileged Role Administrator*<
- For non-role-assignable groups: *Global Reader*, *Directory Writer*, *Groups Administrator*, *Identity Governance Administrator*, or *User Administrator*

The role assignments for the calling user should be scoped at the directory level.

Other roles with permissions to manage groups (such as Exchange Administrators for non-role-assignable Microsoft 365 groups) and administrators with assignments scoped at administrative unit level can manage groups through groups API and override changes made in Microsoft Entra PIM through PIM for groups APIs.
