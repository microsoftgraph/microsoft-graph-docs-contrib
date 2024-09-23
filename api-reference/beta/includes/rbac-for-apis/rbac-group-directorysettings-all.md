---
author: yuhko-msft
ms.topic: include
---

In delegated scenarios with work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role with a supported role permission. The following least privileged roles are supported for this operation.

| Microsoft Entra role                                                                          | Allowed privileges                                                            |
|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| Microsoft Entra Joined Device Local Administrator <br/> Directory Readers <br/> Global Reader | Read basic properties on setting templates and settings                       |
| Groups Administrator <br/> Directory Writers                                                  | Manage all group settings                                                     |
| Authentication Policy Administrator                                                           | Update `Password Rule Settings`                                               |
| User Administrator                                                                            | Read basic properties on setting templates and settings <br/> Update settings |

