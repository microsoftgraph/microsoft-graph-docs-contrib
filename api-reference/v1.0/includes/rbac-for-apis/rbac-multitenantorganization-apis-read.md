---
author: rolyon
ms.topic: include
---

> [!IMPORTANT]
> For delegated access using work or school accounts, the signed-in user must be assigned a supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) or a custom role that grants the permissions required for this operation. This operation supports the following built-in roles, which provide only the least privilege necessary:
> - **Security Reader** — Can read basic tenant information (**displayName** and **tenantId** only).
> - **Global Reader** — Can read basic tenant information (**displayName** and **tenantId** only).
>
> To read all properties (including **role**, **state**, **addedByTenantId**, **addedDateTime**, **joinedDateTime**, and **transitionDetails**), the signed-in user must be assigned a role that grants the `MultiTenantOrganization.Read.All` or `MultiTenantOrganization.ReadWrite.All` permission, such as the **Global Administrator** role.