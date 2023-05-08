---
author: ilyalushnikov
ms.topic: include
ms.date: 04/07/2023
ms.author: ilyalushnikov
---

The calling user must also be the owner or member of the group or be assigned one of the following [Azure AD roles](/azure/active-directory/roles/permissions-reference?toc=%2Fgraph%2Ftoc.json).  <br/><ul><li> For role-assignable groups: *Privileged Role Administrator*</li><li> For non-role-assignable groups: *Directory Writer*, *Groups Administrator*, *Identity Governance Administrator*, or *User Administrator*</li></ul>

The role assignments for the calling user should be scoped at the directory level.

Other roles with permissions to manage groups (such as Exchange Administrators for non-role-assignable Microsoft 365 groups) and administrators with assignments scoped at administrative unit level can manage groups through groups API and override changes made in Azure AD PIM through PIM for groups APIs.