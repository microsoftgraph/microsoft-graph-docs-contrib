---
title: Build PowerShell scripts with Microsoft Graph
description: In this tutorial, you'll build a PowerShell script that uses the Microsoft Graph API to access data on behalf of a user.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build PowerShell scripts with Microsoft Graph

This tutorial teaches you how to build a PowerShell script that uses the Microsoft Graph API to access data on behalf of a user.

> [!NOTE]
> To learn how to use Microsoft Graph to access data using app-only authentication, see this [app-only authentication tutorial](powershell-app-only.md).

In this tutorial, you will:

- [Get the signed-in user](/graph/api/user-get)
- [List the user's inbox messages](/graph/api/user-list-messages)
- [Send an email](/graph/api/user-sendmail)

> [!TIP]
> As an alternative to following this tutorial, you can download the completed code through the [quick start](https://developer.microsoft.com/graph/quick-start?state=option-powershell) tool, which automates app registration and configuration. The downloaded code works without any modifications required.
>
> You can also download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-powershell/tree/main/user-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have [PowerShell](/powershell) installed on your development machine. PowerShell 5.1 is the minimum requirement, but PowerShell 7 is recommended.

[!INCLUDE [account-requirements](includes/shared/account-requirements.md)]

> [!NOTE]
> This tutorial was written with PowerShell 7.2.2 and Microsoft Graph PowerShell SDK version 1.9.5. The steps in this guide might work with other versions, but that has not been tested.

[!INCLUDE [user-auth-app-reg-steps](includes/shared/user-auth-app-reg-steps.md)]

> [!NOTE]
> Registering an application for user authentication for the Microsoft Graph PowerShell SDK is optional. The SDK has it's own application registration and corresponding client ID. However, using your own application ID allows for greater control over permission scopes for a particular PowerShell script.

## Authenticate the user

The Microsoft Graph PowerShell SDK provides two authentication methods for user authentication: interactive browser and device code authentication. Interactive browser authentication uses a device's default browser to allow the user to sign in. Device code authentication allows authentication in environments that do not have a default browser. In this exercise you will use device code authentication.

> [!IMPORTANT]
> If you do not already have the Microsoft Graph PowerShell SDK installed, [install it now](/powershell/microsoftgraph/installation) before proceeding.

1. Open PowerShell and use the following command to set the `$clientID` session variable, replacing *&lt;your-client-id&gt;* with the client ID of your app registration.

    ```powershell
    $clientId = <your-client-id>
    ```

1. Set the `$tenantId` session variable. If you chose the option to only allow users in your organization to sign in when registering your application, replace *&lt;tenant-id&gt;* with your organization's tenant ID. Otherwise, replace with `common`.

    ```powershell
    $tenantId = <tenant-id>
    ```

1. Set the `$graphScopes` session variable.

    ```powershell
    $graphScopes = "user.read mail.read mail.send"
    ```

1. Use the following command to authenticate the user inside the current PowerShell session.

    :::code language="powershell" source="includes/powershell/src/user-auth/GraphTutorial.ps1" id="UserAuthSnippet":::

    > [!TIP]
    > If you would prefer to use interactive browser authentication, omit the `-UseDeviceAuthentication` parameter.

1. Open a browser and browse to the URL displayed. Enter the provided code and sign in.

    [!INCLUDE [browser-auth-note](includes/shared/browser-auth-note.md)]

1. Once completed, return to the PowerShell window. Run the following command to verify the authenticated context.

    :::code language="powershell" source="includes/powershell/src/user-auth/GraphTutorial.ps1" id="GetContextSnippet":::

    ```powershell
    ClientId              : 2fb1652f-a9a0-4db9-b220-b224b8d9d38b
    TenantId              : 601faea3-be45-4960-898f-92b379b17cd9
    CertificateThumbprint :
    Scopes                : {Mail.Read, Mail.Send, openid, profile…}
    AuthType              : Delegated
    AuthProviderType      : DeviceCodeProvider
    CertificateName       :
    Account               : MeganB@contoso.com
    AppName               : PowerShell Graph Tutorial
    ContextScope          : CurrentUser
    Certificate           :
    PSHostVersion         : 2022.4.1
    ClientTimeout         : 00:05:00
    ```

## Get the authenticated user

In this section you will get the authenticated user.

1. In your authenticated PowerShell session, run the following command to get the current context. The context provides information to identify the authenticated user.

    :::code language="powershell" source="includes/powershell/src/user-auth/GraphTutorial.ps1" id="SaveContextSnippet":::

1. Run the following command to get the user from Microsoft Graph.

    :::code language="powershell" source="includes/powershell/src/user-auth/GraphTutorial.ps1" id="GetUserSnippet":::

    > [!TIP]
    > You can add the `-Debug` switch to the previous command to see the API request and response.

1. Run the following commands to output user information.

    :::code language="powershell" source="includes/powershell/src/user-auth/GraphTutorial.ps1" id="GreetUserSnippet":::

    ```powershell
    Hello, Megan Bowen!
    Email: MeganB@contoso.com
    ```

### Code explained

Consider the command used to get the authenticated user. It's a seemingly simple command, but there are some key details to notice.

#### Accessing 'me'

The `Get-MgUser` command builds a request to the [Get user](/graph/api/user-get) API. This API is accessible two ways:

```http
GET /me
GET /users/{user-id}
```

The Microsoft Graph PowerShell SDK does not support the `GET /me` API endpoint. In order to use the `GEt /users/{user-id}` endpoint, we must provide a value for the `{user-id}` parameter. In the example above, the `$context.Account` value is used. This value contains the authenticated user's user principal name (UPN).

#### Requesting specific properties

The function uses the `-Select` parameter on the command to specify the set of properties it needs. This adds the [$select query parameter](/graph/query-parameters#select-parameter) to the API call.

#### Strongly-typed return type

The function returns a `MicrosoftGraphUser` object deserialized from the JSON response from the API. Because the command uses `-Select`, only the requested properties will have values in the returned object. All other properties will have default values.

## Next step

> [!div class="nextstepaction"]
> [Read and send email](powershell-email.md)
