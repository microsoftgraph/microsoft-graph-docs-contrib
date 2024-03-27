---
author: yuhko-msft
ms.topic: include
---

For delegated scenarios, the calling user needs at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

| Microsoft Entra role                                                                          | Allowed privileges                                                            |
|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------|
| Microsoft Entra Joined Device Local Administrator <br/> Directory Readers <br/> Global Reader | Read basic properties on setting templates and settings                       |
| Groups Administrator <br/> Directory Writers                                                  | Manage all group settings                                                     |
| Authentication Policy Administrator                                                           | Update `Password Rule Settings`                                               |
| User Administrator                                                                            | Read basic properties on setting templates and settings <br/> Update settings |

