---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD002 MD041 -->

In this exercise you will create, run, and approve an Azure Data Factory pipeline to extract data from Microsoft 365 to an Azure Storage Blob for additional processing.

## Create a Microsoft Azure Active Directory application registration

The first step is to create an Azure AD application that will be used as the security principal to run the data extraction process.

1. Open a browser and go to your [Azure Portal](https://portal.azure.com/).

1. Sign in using an account with **[Application Administrator](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#application-administrator)** or **[Application Developer](https://docs.microsoft.com/en-us/azure/active-directory/roles/permissions-reference#application-developer)** role to your Azure portal.

1. On the sidebar navigation, select **Azure Active Directory** (Azure AD).

1. On the Azure AD Overview page, select **App registrations** from the **Manage** section of the menu.

1. Select the **New registration** button.

    ![A screenshot showing the App registrations in the Azure Active Directory service in the Azure portal.](../concepts/images/data-connect-azure-aad-app-reg.png)


1. Use the following values to create a new Azure AD application and select **Register**. Please note: MGDC only supports single tenant as of now.

   - **Name**: Microsoft Graph Data Connect Data Transfer
   - **Supported account types**: Accounts in this organizational directory only.
   - **Redirect URI**: Leave the default values.

    ![A screenshot showing the steps to register a new application registration in the Azure portal.](../concepts/images/data-connect-aad-redirect-uri.png)

1. Locate the **Application (client) ID** and copy it as you will need it later in this tutorial. This will be referred to as the service principal ID.

1. Locate the **Directory (tenant) ID** and copy it as you will need it later in this tutorial. This will be referred to as the tenant ID.

![A screenshot showing application and tenant id.](../concepts/images/data-connect-app-tenant-new.png)

1. On the sidebar navigation, select **Certificates and secrets** under **Manage**.

1. Select the **New client secret button**. Set *Description* to any name, set **Expires** to any value in the dropdown and choose **Add**.

    ![A screenshot showing the process to create a new client secret in the Azure portal.](../concepts/images/data-connect-aad-certs-secrets-new.png)

    - After the client secret is created, make sure you save the **Value** somewhere safe, as it will no longer be available later, and you will need to create a new one.
    - This will be referenced as the service principal key.

1. On the sidebar navigation for the application, select **Owners**.

1. Please ensure your account meets the following requirements to be an owner for the application:
    - Be a valid user account within the tenant.
    - You must have a valid and working E5 subscription/license. 
    - You need to have an Exchange Online assigned (must have a mailbox).

1. Verify that your account is listed as an owner for the application. If it isn't listed as an owner, add it. 

    ![A screenshot showing a user verifying that their account is set as owner for the application registration in the Azure portal.](../concepts/images/data-connect-aad-app-owners-new.png)
