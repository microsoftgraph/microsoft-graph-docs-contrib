---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

Directory permissions provide the highest level of privilege for accessing directory resources such as [user](/graph/api/resources/user), [group](/graph/api/resources/group), and [device](/graph/api/resources/device) in an organization.

They also exclusively control access to other directory resources like: [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-beta&preserve-view=true) and [schema extensions](/graph/api/resources/schemaextension?view=graph-rest-beta&preserve-view=true), as well as many directory resources including administrative units, directory roles, directory settings, and policies.

> [!NOTE]
> Before December 3rd, 2020, when the application permission *Directory.Read.All* was granted, the [Directory Readers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#directory-readers-permissions) directory role was also assigned to the app's service principal. This directory role isn't removed automatically when the associated application permissions are revoked. To remove an application's access to read or write to the directory, customers must also remove any directory roles that were granted to the application.
>
> A service update disabling this behavior began rolling out on December 3rd, 2020. Deployment to all customers completed on January 11th, 2021. Directory roles are no longer automatically assigned when application permissions are granted.