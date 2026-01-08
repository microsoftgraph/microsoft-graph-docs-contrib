---
title: Build PowerShell scripts with Microsoft Graph and app-only authentication
description: In this tutorial, you build a PowerShell script that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build PowerShell scripts with Microsoft Graph and app-only authentication

<!-- cSpell:ignore newkey keyout pkcs inkey -->

This tutorial teaches you how to build a PowerShell script that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](powershell.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-powershell/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [PowerShell](/powershell) installed on your development machine. PowerShell 5.1 is the minimum requirement, but PowerShell 7 is recommended.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with PowerShell 7.2.2 and Microsoft Graph PowerShell SDK version 1.9.5. The steps in this guide might work with other versions, but that hasn't been tested.

## Register application for app-only authentication

To enable [app-only authentication](/graph/auth-v2-service), register a new application in Microsoft Entra.

### Create a self-signed certificate

The Microsoft Graph PowerShell SDK requires a certificate for app-only authentication. For development purposes, a self-signed certificate is sufficient. You need a certificate with the private key installed on the local machine, and the public key exported in a .CER, .PEM, or .CRT file.

#### [Windows](#tab/windows)

On Windows, you can use the [pki PowerShell module](/powershell/module/pki) to generate the certificate.

```powershell
$cert = New-SelfSignedCertificate -Subject "CN=PowerShell App-Only" -CertStoreLocation `
  "Cert:\CurrentUser\My" -KeyExportPolicy Exportable -KeySpec Signature -KeyLength 2048 `
  -KeyAlgorithm RSA -HashAlgorithm SHA256
Export-Certificate -Cert $cert -FilePath "./PowerShellAppOnly.cer"
```

#### [Linux/macOS](#tab/linux-macos)

On Linux or macOS, you can use [OpenSSL](https://www.openssl.org/) to generate the private and public keys, then use PowerShell to install the private key into a certificate store readable by PowerShell.

1. Generate a new X509 certificate using the following command.

    ```bash
    openssl req -x509 -newkey rsa:2048 -sha256 -days 365 -keyout powershell.pem -out powershell.crt -subj "/CN=PowerShell App-Only"
    ```

1. OpenSSL prompts you for a PEM pass phrase. Enter a pass phrase you can remember.

1. Create a PFX file using the following command.

    ```bash
    openssl pkcs12 -export -out powershell.pfx -inkey powershell.pem -in powershell.crt
    ```

1. OpenSSL prompts you for the pass phrase for **powershell.pem**. Enter the pass phrase you used in the previous step.

1. OpenSSL prompts you for an export password. Enter a password you can remember.

1. Open PowerShell and run the following commands, replacing *&lt;export-password&gt;* with the export password you used in the previous step.

    ```powershell
    using namespace System.Security.Cryptography.X509Certificates
    $store = [X509Store]::new('My', 'CurrentUser', 'ReadWrite')
    $store.Add([X509Certificate2]::new('./powershell.pfx', '<export-password>', [X509KeyStorageFlags]::PersistKeyS
    et))
    $store.Dispose()
    ```

---

### Register application in the Microsoft Entra admin center

1. Open a browser and navigate to the [Microsoft Entra admin center](https://entra.microsoft.com) and sign in using a Global administrator account.

1. Select **Microsoft Entra ID** in the left-hand navigation, expand **Identity**, expand **Applications**, then select **App registrations**.

    :::image type="content" source="images/entra-portal-app-registrations.png" alt-text="A screenshot of the App registrations":::

1. Select **New registration**. Enter a name for your application, for example, `Graph App-Only Auth Tutorial`.

1. Set **Supported account types** to **Accounts in this organizational directory only**.

1. Leave **Redirect URI** empty.

1. Select **Register**. On the application's **Overview** page, copy the value of the **Application (client) ID** and **Directory (tenant) ID** and save them. You'll need these values in the next step.

    :::image type="content" source="images/aad-app-only-application-id.png" alt-text="A screenshot of the application ID of the new app registration":::

1. Select **API permissions** under **Manage**.

1. Remove the default **User.Read** permission under **Configured permissions** by selecting the ellipses (**...**) in its row and selecting **Remove permission**.

1. Select **Add a permission**, then **Microsoft Graph**.

1. Select **Application permissions**.

1. Select **User.Read.All**, then select **Add permissions**.

1. Select **Grant admin consent for...**, then select **Yes** to provide admin consent for the selected permission.

    :::image type="content" source="images/aad-configured-permissions.png" alt-text="A screenshot of the Configured permissions table after granting admin consent":::

1. Select **Certificates and secrets** under **Manage**, then select **Certificates**.

1. Select **Upload certificate**. Upload the **PowerShellAppOnly.cer** or **powershell.crt** file you created in the previous step, then select **Add**.

> [!NOTE]
> Notice that, unlike the steps when registering for user authentication, in this section you did configure Microsoft Graph permissions on the app registration. App-only auth uses the [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow), which requires that permissions be configured on the app registration. See [The .default scope](/azure/active-directory/develop/v2-permissions-and-consent#the-default-scope) for details.

## Connect with app-only authentication

1. Disconnect any existing Microsoft Graph connection using the following command.

    ```powershell
    Disconnect-MgGraph
    ```

1. Open PowerShell and use the following command to set the `$clientID` session variable, replacing *&lt;your-client-id&gt;* with the client ID of your app registration.

    ```powershell
    $clientId = <your-client-id>
    ```

1. Set the `$tenantId` session variable, replacing *&lt;your-tenant-id&gt;* with your organization's tenant ID.

    ```powershell
    $tenantId = <your-tenant-id>
    ```

1. Set the `$certificate` session variable to the subject of the certificate created in the previous step.

    ```powershell
    $certificate = "CN=PowerShell App-Only"
    ```

1. Use the `Connect-MgGraph` command to authenticate using the certificate from the previous step.

    :::code language="powershell" source="includes/powershell/src/app-auth/GraphTutorialAppOnly.ps1" id="AppOnlyAuthSnippet":::

1. Use `Get-MgContext` to verify that you're authenticated with app-only authentication. Verify that **AuthType** is `AppOnly`.

    ```powershell
    PS > Get-MgContext

    ClientId              : 2fb1652f-a9a0-4db9-b220-b224b8d9d38b
    TenantId              : 601faea3-be45-4960-898f-92b379b17cd9
    CertificateThumbprint :
    Scopes                : {User.Read.All}
    AuthType              : AppOnly
    AuthProviderType      : ClientCredentialProvider
    CertificateName       : CN=PowerShell App-Only
    Account               :
    AppName               : PowerShell Graph Tutorial
    ContextScope          : Process
    Certificate           :
    PSHostVersion         : 2022.4.1
    ClientTimeout         : 00:05:00
    ```

## Next step

> [!div class="nextstepaction"]
> [Get all users](powershell-app-only-users.md)
