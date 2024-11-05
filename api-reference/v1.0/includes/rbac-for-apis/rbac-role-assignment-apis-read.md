---
author: DougKirschner
ms.topic: include
---

> [!IMPORTANT]
> In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with one of the following role permissions:
> - `microsoft.directory/roleAssignments/standard/read` (least privileged)
> - `microsoft.directory/roleAssignments/allProperties/read`
> - `microsoft.directory/roleAssignments/allProperties/allTasks`
> 
> The least privileged built-in roles supported for this operation are as follows, in the order of least to most privileged:
> - Directory Readers
> - Global Reader
> - Privileged Role Administrator
