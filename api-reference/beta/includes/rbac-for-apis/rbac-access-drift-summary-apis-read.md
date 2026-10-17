---
author: suhanigupta
ms.topic: include
---

> [!TIP]
> For delegated access using a work or school account, the signed-in user must have access to the relevant entitlement management catalog. The least privileged [role in the Entitlement Management system](/entra/id-governance/entitlement-management-delegate) is *Catalog reader*.
>
> When the request identifies a catalog, access is evaluated for that catalog. Otherwise, the results are limited to catalogs that the signed-in user can access.
>
> In app-only scenarios, the calling app must have the `EntitlementManagement.Read.All` or `EntitlementManagement.ReadWrite.All` application permission. An entitlement management catalog role doesn't replace the required application permission.
