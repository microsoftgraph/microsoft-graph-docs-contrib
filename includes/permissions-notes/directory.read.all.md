---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

> [!CAUTION]
> Directory permissions grant broad access to directory (Microsoft Entra ID) resources such as [user](/graph/api/resources/user), [group](/graph/api/resources/group), and [device](/graph/api/resources/device) in an organization. Whenever possible, choose permissions specific to these resources and avoid using directory permissions.
> 
> Directory permissions might be deprecated in the future.

Before December 3rd, 2020, when the application permission *Directory.Read.All* was granted, the [Directory Readers](/entra/identity/role-based-access-control/permissions-reference#directory-writers) directory role was also assigned to the app's service principal. This directory role isn't removed automatically when the associated application permissions are revoked. To remove an application's access to read or write to the directory, customers must also remove any directory roles that were granted to the application.

A service update disabling this behavior began rolling out on December 3rd, 2020. Deployment to all customers completed on January 11th, 2021. Directory roles are no longer automatically assigned when application permissions are granted.
