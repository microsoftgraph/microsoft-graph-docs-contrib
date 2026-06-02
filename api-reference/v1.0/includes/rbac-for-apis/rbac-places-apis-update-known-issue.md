---
author: Dongjing-MSIT
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. *Exchange Administrator* is the least privileged role supported for this operation.
>
> When using application permissions, you must configure the required `TenantPlacesManagement` role (to manage Places) and the `MailRecipient` role (to manage users and mailboxes). For more information on how to configure these roles, see [Role Based Access Control for Applications in Exchange Online](/exchange/permissions-exo/application-rbac).
>
> **Known issue:** Update requests may still succeed even when the required delegated Microsoft Entra role or application RBAC role assignments are missing, but can result in unexpected behaviors.
