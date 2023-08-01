---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this exercise you will register a new application in Azure Active Directory to enable [app-only authentication](/graph/auth-v2-service). Microsoft Graph connectors use app-only authentication to access the connector APIs.

## Register application for app-only authentication

In this section you will register an application that supports app-only authentication using [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow).

1. Open a browser and navigate to the [Azure Active Directory admin center](https://aad.portal.azure.com) and login using a Global administrator account.

1. Select **Azure Active Directory** in the left-hand navigation, then select **App registrations** under **Manage**.

    :::image type="content" source="../../images/connectors-images/aad-portal-app-registrations.png" alt-text="A screenshot of the App registrations":::

1. Select **New registration**. Enter a name for your application, for example, `Parts Inventory Connector`.

1. Set **Supported account types** to **Accounts in this organizational directory only**.

1. Leave **Redirect URI** empty.

1. Select **Register**. On the application's **Overview** page, copy the value of the **Application (client) ID** and **Directory (tenant) ID** and save them, you will need these values in the next step.

    :::image type="content" source="../../images/connectors-images/aad-app-only-application-id.png" alt-text="A screenshot of the application ID of the new app registration":::

1. Select **API permissions** under **Manage**.

1. Remove the default **User.Read** permission under **Configured permissions** by selecting the ellipses (**...**) in its row and selecting **Remove permission**.

1. Select **Add a permission**, then **Microsoft Graph**.

1. Select **Application permissions**.

1. Select **ExternalConnection.ReadWrite.OwnedBy** and **ExternalItem.ReadWrite.OwnedBy**, then select **Add permissions**.

1. Select **Grant admin consent for...**, then select **Yes** to provide admin consent for the selected permission.

    :::image type="content" source="../../images/connectors-images/aad-configured-permissions.png" alt-text="A screenshot of the Configured permissions table after granting admin consent":::

1. Select **Certificates and secrets** under **Manage**, then select **New client secret**.

1. Enter a description, choose a duration, and select **Add**.

1. Copy the secret from the **Value** column, you will need it in the next steps.

    > [!IMPORTANT]
    > This client secret is never shown again, so make sure you copy it now.
