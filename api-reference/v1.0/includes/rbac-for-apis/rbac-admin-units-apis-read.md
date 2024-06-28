---
author: DougKirschner
ms.topic: include
---

In delegated scenarios, the signed-in user must be a member user or be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.


| Microsoft Entra role | Limitations | Key role permission |
|--|--|--|
| Directory Readers | Read basic properties on administrative units | microsoft.directory/administrativeUnits/standard/read |
| Directory Readers | Read members of administrative units | microsoft.directory/administrativeUnits/members/read |
| Global Reader | Read all properties of administrative units, including members | microsoft.directory/administrativeUnits/allProperties/read |
| Privileged Role Administrator | Create and manage administrative units (including members) | microsoft.directory/administrativeUnits/allProperties/allTasks |
