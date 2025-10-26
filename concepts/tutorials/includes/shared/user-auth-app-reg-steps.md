---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 MD051 -->

## Register an application for user authentication

Register an application that supports [user authentication](/graph/auth-v2-user) using [device code flow](/azure/active-directory/develop/v2-oauth2-device-code). You can register an application using the Microsoft Entra admin center, or by using the [Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/get-started).

### [Microsoft Entra admin center](#tab/aad)

1. Open a browser and navigate to the [Microsoft Entra admin center](https://entra.microsoft.com) and sign in using a Global administrator account.

1. Select **Microsoft Entra ID** in the left-hand navigation, expand **Identity**, expand **Applications**, then select **App registrations**.

    :::image type="content" source="../../images/entra-portal-app-registrations.png" alt-text="A screenshot of the App registrations":::

1. Select **New registration**. Enter a name for your application, for example, `Graph User Auth Tutorial`.

1. Set **Supported account types** as desired. The options are:

    | Option | Who can sign in? |
    |--------|------------------|
    | **Accounts in this organizational directory only** | Only users in your Microsoft 365 organization |
    | **Accounts in any organizational directory** | Users in any Microsoft 365 organization (work or school accounts) |
    | **Accounts in any organizational directory ... and personal Microsoft accounts** | Users in any Microsoft 365 organization (work or school accounts) and personal Microsoft accounts |

1. Leave **Redirect URI** empty.

1. Select **Register**. On the application's **Overview** page, copy the value of the **Application (client) ID** and save it. You'll need it in the next step. If you chose **Accounts in this organizational directory only** for **Supported account types**, also copy the **Directory (tenant) ID** and save it.

    :::image type="content" source="../../images/aad-application-id.png" alt-text="A screenshot of the application ID of the new app registration":::

1. Select **Authentication** under **Manage**. Locate the **Advanced settings** section and change the **Allow public client flows** toggle to **Yes**, then choose **Save**.

    :::image type="content" source="../../images/aad-default-client-type.png" alt-text="A screenshot of the Allow public client flows toggle":::

### [PowerShell](#tab/powershell)

To use PowerShell, you need the Microsoft Graph PowerShell SDK. If you don't have it, see [Install the Microsoft Graph PowerShell SDK](/powershell/microsoftgraph/installation) for installation instructions.

> [!IMPORTANT]
> The PowerShell script requires a work/school account with the Application administrator, Cloud application administrator, or Global administrator role. If your account has the Application developer role, you can register in the Microsoft Entra admin center.

1. Create a new file named **RegisterAppForUserAuth.ps1** and add the following code.

    :::code language="powershell" source="../dotnet/src/user-auth/RegisterAppForUserAuth.ps1" id="ScriptBody":::

1. Save the file.

1. Open PowerShell and change the current directory to the location of **RegisterAppForUserAuth.ps1**.

1. Run the following command, replacing *&lt;audience-value&gt;* with the desired value (see the following table).

    ```powershell
    .\RegisterAppForUserAuth.ps1 -AppName "Graph User Auth Tutorial" -SignInAudience <audience-value>
    ```

    | SignInAudience value | Who can sign in? |
    |----------------------|------------------|
    | `AzureADMyOrg` | Only users in your Microsoft 365 organization |
    | `AzureADMultipleOrgs` | Users in any Microsoft 365 organization (work or school accounts) |
    | `AzureADandPersonalMicrosoftAccount` | Users in any Microsoft 365 organization (work or school accounts) and personal Microsoft accounts |
    | `PersonalMicrosoftAccount` | Only personal Microsoft accounts |

1. Follow the prompt to open `https://microsoft.com/devicelogin` in a browser, enter the provided code, and complete the authentication process.

1. Copy the **Client ID** and **Auth tenant** values from the script output. You'll need these values in the next step.

    ```powershell
    SUCCESS
    Client ID: 2fb1652f-a9a0-4db9-b220-b224b8d9d38b
    Auth tenant: common
    ```

---

> [!NOTE]
> Notice that you didn't configure any Microsoft Graph permissions on the app registration. The sample uses [dynamic consent](/azure/active-directory/develop/v2-permissions-and-consent#incremental-and-dynamic-user-consent) to request specific permissions for user authentication.
