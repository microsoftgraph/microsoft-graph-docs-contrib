---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

> [!CAUTION]
> Permissions that allow granting authorization, such as *EntitlementManagement.ReadWrite.All*, allow an application to grant additional privileges to itself, other applications, or any user. Use caution when granting any of these permissions.
>
> With the _EntitlementManagement.ReadWrite.All_ permission, an application can manage authorizations for all resources that have been [onboarded by resource owners to entitlement management catalogs](/entra/id-governance/entitlement-management-catalog-create). This includes Microsoft Entra role assignments, app role assignments and API permissions (including Microsoft Graph) of Microsoft Entra integrated apps, Azure resource roles, SharePoint site roles, group memberships, and more. For details, see [Add a resource to a catalog](/graph/api/entitlementmanagement-post-resourcerequests).