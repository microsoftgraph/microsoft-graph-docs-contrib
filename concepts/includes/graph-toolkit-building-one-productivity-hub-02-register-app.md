After all the prerequisites are in place, you will be able to register an application in the Azure Active Directory. The registration is necessary in order to authenticate the application through Microsoft Graph Toolkit MSAL2 provider and use UI components.

1. Go to [Azure Portal](https://portal.azure.com) and sign in with your Microsoft 365 Developer Program tenant.
1. Select **Azure Active Directory** from the left pane.

1. Select **App Registration** and click on **New Registration**.

   ![Screenshot showing Azure Active Directory App registration tab](../images/mgt-one-productivity-hub/aad-app-registration.png)

1. Complete the **Register an application** form with the following values, and then select **Register**.
   * **Name**: One Productivity Hub Demo
   * **Supported account types**: Accounts in any organizational directory (Any Azure AD directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)
   * **Redirect URI**: Select **Single-page application (SPA)** as a type of redirect URI and place `http://localhost:3000/index.html` as a redirect URI to test locally.

    ![Screenshot showing the new app registration form](../images/mgt-one-productivity-hub/aad-new-app-registration-form.png)

1. Once app registration is completed, go to **Overview** tab in your application page and copy **Application (client) ID**, you will need it in the following section.
