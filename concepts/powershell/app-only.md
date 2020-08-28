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

Let's walk through configuring app-only access for a simple script to list users and groups in your Microsoft 365 tenant.

## Configuration

Before you can use app-only access with the SDK, you need the following.

- A certificate to use as a credential for the application. This can be a self-signed certificate or a certificate from an authority.
- You must [register an application](/azure/active-directory/develop/app-objects-and-service-principals) in Azure AD, configure it with the permission scopes your scenario requires, and share the public key for your certificate.

### Certificate

You will need an X.509 certificate installed in your user's trusted store on the machine where you will run the script. You'll also need the certificate's public key exported in .cer, .pem, or .crt format. You'll need the value of the certificate subject.

```powershell
# Requires an admin
Connect-Graph -Scopes "Application.ReadWrite.All"

$app = New-MgApplication -DisplayName "Graph PowerShell Script"
```

### Register the application

1. Open a browser and navigate to the [Azure Active Directory admin center](https://aad.portal.azure.com) and login using an Microsoft 365 tenant organization admin.

1. Select **Azure Active Directory** in the left-hand navigation, then select **App registrations** under **Manage**.

    ![A screenshot of the App registrations ](./images/aad-portal-app-registrations.png)

1. Select **New registration**. On the **Register an application** page, set the values as follows.

    - Set **Name** to `Graph PowerShell Script`.
    - Set **Supported account types** to **Accounts in this organizational directory only**.
    - Leave **Redirect URI** blank.

    ![A screenshot of the Register an application page](./images/register-app.png)

1. Select **Register**. On the **Graph PowerShell Script** page, copy the values of the **Application (client) ID** and **Directory (tenant) ID** and save them.

    ![A screenshot of the application ID of the new app registration](./images/aad-application-id.png)

1. Select **API Permissions** under **Manage**. Choose **Add a permission**.

1. Select **Microsoft Graph**, then **Application Permissions**. Add **User.Read.All** and **Group.Read.All**, then select **Add permissions**.

1. In the **Configured permissions**, remove the delegated **User.Read** permission under **Microsoft Graph** by selecting the **...** to the right of the permission and selecting **Remove permission**. Select **Yes, remove** to confirm.

1. Select the **Grant admin consent for...** button, then select **Yes** to grant admin consent for the configured application permissions. The **Status** column in the **Configured permissions** table changes to **Granted for ...**.

    ![A screenshot of the configured permissions for the webhook with admin consent granted](./images/configured-permissions.png)

1. Select **Certificates & secrets** under **Manage**. Select the **Upload certificate** button. Browse to your certificate's public key file and select **Add**.

## Authenticate

You should have three pieces of information after completing the configuration steps above.

- Certificate subject of the certificate uploaded to your Azure AD app registration.
- Application ID for your app registration.
- Your tenant ID.

Let's use those to test authentication. Open PowerShell and run the following command, replacing the placeholders with your information.

```powershell
Connect-Graph -ClientID YOUR_APP_ID -TenantId YOUR_TENANT_ID -CertificateName YOUR_CERT_SUBJECT
```

If this succeeds, you will see `Welcome To Microsoft Graph!`. Run `Get-MgContext` to verify that you've authenticated with app-only. The output should look like the following.

```powershell
ClientId              : YOUR_APP_ID
TenantId              : YOUR_TENANT_ID
CertificateThumbprint :
Scopes                : {Group.Read.All, User.Read.All}
AuthType              : AppOnly
CertificateName       : YOUR_CERT_SUBJECT
Account               :
AppName               : Graph PowerShell Script
ContextScope          : Process
```

## Create the script

Create a new file named **GraphAppOnly.ps1** and add the following code.

```powershell
# Authenticate
Connect-Graph -ClientID YOUR_APP_ID -TenantId YOUR_TENANT_ID -CertificateName YOUR_CERT_SUBJECT

Write-Host "USERS:"
Write-Host "======================================================"
# List first 50 users
Get-MgUser -Property "id,displayName" -PageSize 50 | Format-Table DisplayName, Id

Write-Host "GROUPS:"
Write-Host "======================================================"
# List first 50 groups
Get-MgGroup -Property "id,displayName" -PageSize 50 | Format-Table DisplayName, Id

# Disconnect
Disconnect-Graph
```

Replace the placeholders in the `Connect-Graph` command with your information. Save the file, then open PowerShell in the directory where you created the file. Run the script with the following command.

```powershell
.\GraphAppOnly.ps1
```

The script outputs a list of users and groups similar to the output below (truncated for brevity).

```powershell
Welcome To Microsoft Graph!
USERS:
======================================================

DisplayName              Id
-----------              --
Conf Room Adams          88d1ba68-8ff5-4de2-90ed-768c00abcfae
Adele Vance              3103c7b9-cfe6-4cd3-a696-f88909b9a609
MOD Administrator        da3a885e-2d97-41de-9347-5271ef321b58
...

GROUPS:
======================================================

DisplayName                         Id
-----------                         --
App Development                     06dce3e5-d310-4add-ab2c-be728fb9076e
All Employees                       1a1cd42d-9801-4e9d-9b77-5215886174ef
Mark 8 Project Team                 2bf1b0d0-81f6-4e80-b971-d1db69f8d651
...
```
