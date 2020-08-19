---
title: "Use app-only authentication with the Microsoft Graph PowerShell SDK"
description: "Learn how to use app-only authentication to enable non-interactive scenarios with the Microsoft Graph PowerShell SDK."
localization_priority: Normal
author: jasonjoh
---

# Use app-only authentication with the Microsoft Graph PowerShell SDK

The PowerShell SDK supports two types of authentication: [delegated access](..\auth-v2-user.md), and [app-only access](..\auth-v2-service.md). This guide will focus on the configuration needed to enable app-only access.

> [!IMPORTANT]
> App-only access grants permissions directly to an application, and requires an administrator to consent to the required permission scopes. For more details on app-only access, see [Microsoft identity platform and the OAuth 2.0 client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

Let's walk through configuring app-only access for a simple script to list all users and groups in your Microsoft 365 tenant.

## Configuration

Before you can use app-only access with the SDK, you must [register an application](/azure/active-directory/develop/app-objects-and-service-principals) in Azure AD and configure it with the permission scopes your scenario requires.

1. Open a browser and navigate to the [Azure Active Directory admin center](https://aad.portal.azure.com) and login using an Microsoft 365 tenant organization admin.

1. Select **Azure Active Directory** in the left-hand navigation, then select **App registrations** under **Manage**.

    ![A screenshot of the App registrations ](./images/aad-portal-app-registrations.png)

1. Select **New registration**. On the **Register an application** page, set the values as follows.

    - Set **Name** to `Graph PowerShell Script`.
    - Set **Supported account types** to **Accounts in this organizational directory only**.
    - Leave **Redirect URI** blank.

    ![A screenshot of the Register an application page](./images/register-command-line-app.png)

1. Select **Register**. On the **Graph PowerShell Script** page, copy the value of the **Application (client) ID** and save it, you will need it in the next step.

    ![A screenshot of the application ID of the new app registration](./images/aad-application-id.png)

1. Select **API Permissions** under **Manage**. Choose **Add a permission**.

1. Select **Microsoft Graph**, then **Application Permissions**. Add **User.Read.All** and **Mail.Read**, then select **Add permissions**.

1. In the **Configured permissions**, remove the delegated **User.Read** permission under **Microsoft Graph** by selecting the **...** to the right of the permission and selecting **Remove permission**. Select **Yes, remove** to confirm.

1. Select the **Grant admin consent for...** button, then select **Yes** to grant admin consent for the configured application permissions. The **Status** column in the **Configured permissions** table changes to **Granted for ...**.

    ![A screenshot of the configured permissions for the webhook with admin consent granted](./images/webhook-configured-permissions.png)

1. Select **Certificates & secrets** under **Manage**. Select the **New client secret** button. Enter a value in **Description** and select one of the options for **Expires** and select **Add**.

1. Copy the client secret value before you leave this page. You will need it in the next step.
