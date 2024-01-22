---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

*Directory permissions are **not recommended** for use and might be deprecated in the future.*

Directory.ReadWrite.All grants access that is broadly equivalent to a global tenant admin. Apps that are granted Directory.ReadWrite.All can manage the full range of directory resources, and they can manage authorization for *other* apps and users to access resources across the organization. This includes directory resources like [users](/graph/api/resources/user), [groups](/graph/api/resources/group), [applications](/graph/api/resources/application), and [devices](/graph/api/resources/device), and nondirectory resources in Exchange, SharePoint, Teams, and other services.

Before December 3rd, 2020, when the application permission *Directory.ReadWrite.All* was granted, the [Directory Writers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#directory-writers-permissions) directory role was also assigned. This directory role isn't removed automatically when the associated application permissions are revoked. To remove an application's access to read or write to the directory, customers must also remove any directory roles that were granted to the application.

A service update disabling this behavior began rolling out on December 3rd, 2020. Deployment to all customers completed on January 11, 2021. Directory roles are no longer automatically assigned when application permissions are granted.
