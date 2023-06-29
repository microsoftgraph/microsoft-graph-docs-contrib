---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

In this exercise, you'll create, run, and approve an Azure Data Factory pipeline to extract data from Microsoft 365 to an Azure Storage Blob for additional processing.

## Create a Microsoft Azure Active Directory application registration

This step describes how you create an Azure Active Directory (Azure AD) application that serves as the security principal to run the data extraction process.

1. Open a browser and go to your [Azure portal](https://portal.azure.com/).

1. Sign in using an account with [Application Administrator](/azure/active-directory/roles/permissions-reference#application-administrator) or [Application Developer](/azure/active-directory/roles/permissions-reference#application-developer) role to your Azure portal.

1. On the home page, select the **Azure Active Directory** service.

1. On the Azure AD **Overview** page, select **App registrations** from the **Manage** section of the left navigation pane. Ensure that you're signed-in with your "developer" account.

1. Select the **New registration** button.

    ![A screenshot that shows the App registrations in the Azure Active Directory service in the Azure portal.](../concepts/images/data-connect-azure-aad-app-reg.png)

1. Use the following values to create a new Azure AD application and select **Register**.

   - **Name**: Microsoft Graph Data Connect Data Transfer (provide the name of your choice).
   - **Supported account types**: Accounts in this organizational directory only.
   - **Redirect URI**: Leave the default values.

    ![A screenshot that shows the steps to register a new application registration in the Azure portal.](../concepts/images/data-connect-aad-redirect-uri.png)

1. Locate the **Application (client) ID** and copy it as you'll need it later in this tutorial. Going forward, this is referred to as the service principal ID.

1. Locate the **Directory (tenant) ID** and copy it as you'll need it later in this tutorial. Going forward, this is referred to as the tenant ID.

    ![A screenshot that shows the application and tenant IDs.](../concepts/images/data-connect-app-tenant-new.png)

1. On the left navigation pane, select **Certificates & secrets** under **Manage**.

1. Select the **New client secret** button. Set *Description* to any name, set *Expires* to any value in the dropdown, and choose **Add**.
    ![A screenshot that shows the process to create a new client secret in the Azure portal.](../concepts/images/data-connect-aad-certs-secrets-new.png)
    - After the client secret is created, make sure you save the **Value** somewhere safe, as it'll no longer be available later; otherwise, you'll need to create a new one.
    - Going forward, the client secret is referred as the service principal key.

1. On the left navigation pane for the application, select **Owners**.
1. Ensure that your account (if you are using a developer tenant use the Global admin account) meets the following requirements to be an application owner:
    - Your user account corresponds to a valid user in the tenant who is not a service principal name.
    - Your account must have an Exchange Online license assigned (must have a mailbox).
    - Alongside the Exchange Online license, your account must also have a working E5 subscription/license.

1. Verify that your account is listed as an application owner. If that isn't the case, add it to the list.

    ![A screenshot that shows a user set as owner for the application registration in the Azure portal.](../concepts/images/data-connect-aad-app-owners-new.png)
