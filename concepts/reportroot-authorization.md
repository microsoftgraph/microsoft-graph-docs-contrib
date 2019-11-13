---
title: "Authorization and the Microsoft Graph reports API"
description: "Reports data accessible via the Microsoft Graph reports API is sensitive and protected by both permissions and Azure Active Directory (Azure AD) roles."
author: "yixia"
localization_priority: Priority
ms.prod: "reports"
---

# Authorization and the Microsoft Graph reports API

Reports data accessible via the Microsoft Graph reports API is sensitive and protected by both permissions and Azure Active Directory (Azure AD) roles.

The Microsoft Graph reports API supports two types of authorization:

- **Application-level authorization** - Allows an app to read all service usage reports without a signed-in user. The permissions granted to the application determine authorization. 
- **User delegated authorization** - Allows an app to read all service usage reports on behalf of the signed-in user. In addition to the app having been granted the required permissions, the user must be a member of an Azure AD Limited Admin role. This can be one of the following roles: Company Administrator, Exchange Service Administrator, SharePoint Service Administrator, Lync Service Administrator, Global Reader, or Reports Reader.

If you're calling the Microsoft Graph reports API from Graph Explorer:

- The Azure AD tenant admin must explicitly grant consent for the requested permissions to the Graph Explorer application.
- The user must be a member of a Limited Admin role in Azure AD, listed above for user-delegated authorization.

>**Note**: Graph Explorer does not support application-level authorization.

If you're calling the Microsoft Graph reports API from a custom or your own application:

- The Azure AD tenant admin must explicitly grant consent to your application. This is required both for application-level authorization and user delegated authorization.
- If you're using user delegated authorization, the signed-in user must be a member of a Limited Admin role in Azure AD as listed above.

## Assign Azure AD roles to users

After an application is granted permissions, everyone with access to the application (that is, members of the Azure AD tenant) will receive the granted permissions. To further protect sensitive reports data, the Microsoft Graph reports API also requires users to be assigned the required Azure AD role. For details, see [Administrator role permissions in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-assign-admin-roles-azure-portal) and [Assign administrator and non-administrator roles to users with Azure Active Directory](https://docs.microsoft.com/azure/active-directory/active-directory-users-assign-role-azure-portal).

>**Note:** You must be a tenant admin to perform this step.

To assign roles to users:

1. Sign in to the [Azure portal](https://portal.azure.com) (https://portal.azure.com).
2. Click the icon in the top left to expand the Azure portal menu. Select **Azure Active Directory** > **Users**.
3. Select the name of the user.
4. On the user's Profile page, select **Assigned roles**.
5. Select **Add assignment**, and choose the specific role check box on the Directory roles page.
6. Choose **Add**.