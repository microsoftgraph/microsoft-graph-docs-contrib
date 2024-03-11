---
title: "Authorization for APIs to read Microsoft 365 usage reports"
description: "Microsoft 365 usage reports are protected by both permissions and Microsoft Entra roles. Learn how to assign a role to a user."
author: "kszb"
ms.localizationpriority: high
ms.subservice: "reports"
---

# Authorization for APIs to read Microsoft 365 usage reports

Reports data that is accessible via the Microsoft Graph reports API is sensitive. In particular, Microsoft 365 usage reports are protected by both permissions and Microsoft Entra roles. The information in this article applies to the reports API that reads Microsoft 365 usage reports.

The APIs to read Microsoft 365 usage reports support two types of authorization:

- **Application-level authorization** - Allows an app to read all service usage reports without a signed-in user. The permissions granted to the application determine authorization.
- **User delegated authorization** - Allows an app to read all service usage reports on behalf of the signed-in user. In addition to the app having been granted the required permissions, the user must be a member of a Microsoft Entra ID limited administrator role. This can be one of the following roles: Company Administrator, Exchange Administrator, SharePoint Administrator, Lync Administrator, Teams Service Administrator, Teams Communications Administrator, Global Reader, Usage Summary Reports Reader, or Reports Reader. The Global Reader and Usage Summary Reports Reader roles will only have access to tenant-level data, without visibility into detailed metrics.

If you're calling the APIs from Graph Explorer:

- The Microsoft Entra tenant administrator must explicitly grant consent for the requested permissions to the Graph Explorer application.
- The user must be a member of a limited administrator role in Microsoft Entra ID, listed above for user-delegated authorization.

> [!NOTE]
> Graph Explorer does not support application-level authorization.

If you're calling the APIs from an application:

- The Microsoft Entra tenant administrator must explicitly grant consent to your application. This is required both for application-level authorization and user delegated authorization.
- If you're using user delegated authorization, the signed-in user must be a member of a limited administrator role in Microsoft Entra ID.

<a name='assign-azure-ad-roles-to-users'></a>

## Assign Microsoft Entra roles to users

After an application is granted permissions, everyone with access to the application (that is, members of the Microsoft Entra tenant) receives the granted permissions. To further protect sensitive reports data, tenant administrators must assign users of the application the appropriate Microsoft Entra roles. For details, see [Administrator role permissions in Microsoft Entra ID](/azure/active-directory/active-directory-assign-admin-roles-azure-portal) and [Assign administrator and non-administrator roles to users with Microsoft Entra ID](/azure/active-directory/active-directory-users-assign-role-azure-portal).

> [!NOTE]
> You must be a tenant administrator to perform this step.

To assign a role to a user:

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com).
2. Expand the **Identity** menu > **Users** > select **All users**.
3. Select the user.
4. Choose **Assigned roles**, and then **Add assignment**.
5. Select the appropriate role, and click **Add**.
