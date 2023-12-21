---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

In this exercise, you learn how to create a Microsoft Entra application. This serves as the security principal to run the data extraction process with Microsoft Graph Data Connect.


<a name='create-a-microsoft-azure-active-directory-application'></a>

## Create a Microsoft Entra application

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) with at least the *Application Administrator* or*Application Developer* role.

1. Expand the **Identity** menu > select **Applications** > **App registrations** > **New registration**.

1. Use the following values to create a new Microsoft Entra application and select **Register**.

   - **Name**: Microsoft Graph Data Connect Data Transfer (provide the name of your choice).
   - **Supported account types**: Accounts in this organizational directory only.
   - **Redirect URI**: Leave the default values.

    ![A screenshot that shows the steps to register a new application registration in the Azure portal.](../concepts/images/data-connect-aad-redirect-uri.png)

1. Locate the **Application (client) ID** and copy it as you need it later in this tutorial. Going forward, this is referred to as the service principal ID.

1. Locate the **Directory (tenant) ID** and copy it as you need it later in this tutorial. Going forward, this is referred to as the tenant ID.

    ![A screenshot that shows the application and tenant IDs.](../concepts/images/data-connect-app-tenant-new.png)

1. On the left navigation pane, select **Certificates & secrets** under **Manage**.

1. Select the **New client secret** button. Set *Description* to any name, set *Expires* to any value in the dropdown, and choose **Add**.
    ![A screenshot that shows the process to create a new client secret in the Azure portal.](../concepts/images/data-connect-aad-certs-secrets-new.png)
    - After the client secret is created, make sure you save the **Value** somewhere safe, as it will no longer be available later; otherwise, you'll need to create a new one.
    - Going forward, the client secret is referred as the service principal key.

1. On the left navigation pane for the application, select **Owners**.

1. Ensure that your account (if you're using a developer tenant use the Global admin account) meets the following requirements to be an application owner:
    - Your user account corresponds to a valid user in the tenant who isn't a service principal name.
    - Your account must have an Exchange Online license assigned (must have a mailbox).
    - Alongside the Exchange Online license, your account must also have a working E5 subscription/license.

1. Verify that your account is listed as an application owner. If that isn't the case, add it to the list.

    ![A screenshot that shows a user set as owner for the application registration in the Azure portal.](../concepts/images/data-connect-aad-app-owners-new.png) 
