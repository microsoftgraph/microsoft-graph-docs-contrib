---
ms.localizationpriority: high
---

<!-- markdownlint-disable MD002 MD041 -->

Before December 3rd, 2020, when the application permission *Device.ReadWrite.All* was granted, the [Device Managers](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#deprecated-roles) directory role was also assigned to the app's service principal. This directory role assignment is not removed automatically when the associated application permissions is revoked. To ensure that an application's access to read or write to devices is removed, customers must also remove any related directory roles that were granted to the application.

A service update disabling this behavior began rolling out on December 3rd, 2020. Deployment to all customers completed on January 11th, 2021. Directory roles are no longer automatically assigned when application permissions are granted.