---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

Register the application in the Microsoft Entra ID to enable user authentication.

1. Go to the [Microsoft Entra admin center](https://entra.microsoft.com) and sign in with your Microsoft 365 Developer Program tenant.
1. Expand the **Identity** menu > expand **Applications** > select **App registrations** > **New registration**.

   ![Screenshot of the app registrations page with New registration highlighted](../../../images/mgt-one-productivity-hub/aad-app-registration.png)

1. Complete the **Register an application** form using the following values, and then select **Register**.
   * **Name**: One Productivity Hub Demo
   * **Supported account types**: Accounts in any organizational directory (Any Microsoft Entra directory - Multitenant) and personal Microsoft accounts (for example, Skype, Xbox)
   * **Redirect URI**: Select **Single-page application (SPA)** as a type of redirect URI and put `http://localhost:3000/index.html` as a redirect URI to test locally.

    ![Screenshot of the Register an application page showing the values to input](../../../images/mgt-one-productivity-hub/aad-new-app-registration-form.png)

1. When app registration is completed, go to the **Overview** tab in your application page and copy **Application (client) ID**. You need this ID for the following step.
