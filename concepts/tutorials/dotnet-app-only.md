---
title: Build .NET apps with Microsoft Graph and app-only authentication
description: In this tutorial, you build a .NET app that uses the Microsoft Graph API to access data using app-only authentication.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 06/03/2025
ms.localizationpriority: medium
---

# Build .NET apps with Microsoft Graph and app-only authentication

This tutorial teaches you how to build a .NET console app that uses the Microsoft Graph API to access data using app-only authentication. App-only authentication is a good choice for background services or applications that need to access data for all users in an organization.

> [!NOTE]
> To learn how to use Microsoft Graph to access data on behalf of a user, see this [user (delegated) authentication tutorial](dotnet.md).

In this tutorial, you will:

- [List users](/graph/api/user-list)

> [!TIP]
> As an alternative to following this tutorial, you can download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-dotnet/tree/main/app-auth) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have the [.NET SDK](https://dotnet.microsoft.com/download) installed on your development machine.

[!INCLUDE [account-requirements-app-only](includes/shared/account-requirements-app-only.md)]

> [!NOTE]
> This tutorial was written with .NET SDK version 7.0.102. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [app-auth-app-reg-steps](includes/shared/app-auth-app-reg-steps.md)]

## Create a .NET console app

Begin by creating a new .NET console project using the [.NET CLI](/dotnet/core/tools/).

1. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

    ```dotnetcli
    dotnet new console -o GraphAppOnlyTutorial
    ```

1. Once the project is created, verify that it works by changing the current directory to the **GraphAppOnlyTutorial** directory and running the following command in your CLI.

    ```dotnetcli
    dotnet run
    ```

    If it works, the app should output `Hello, World!`.

## Install dependencies

Before moving on, add some dependencies that you use later.

- [.NET configuration packages](/dotnet/core/extensions/configuration) to read application configuration from **appsettings.json**.
- [Azure Identity client library for .NET](https://www.nuget.org/packages/Azure.Identity)  to authenticate the user and acquire access tokens.
- [Microsoft Graph .NET client library](https://github.com/microsoftgraph/msgraph-sdk-dotnet) to make calls to the Microsoft Graph.

To install the dependencies, run the following commands in your CLI.

```Shell
dotnet add package Microsoft.Extensions.Configuration.Binder
dotnet add package Microsoft.Extensions.Configuration.Json
dotnet add package Microsoft.Extensions.Configuration.UserSecrets
dotnet add package Azure.Identity
dotnet add package Microsoft.Graph
```

## Load application settings

Add the details of your app registration to the project.

1. Create a file in the **GraphAppOnlyTutorial** directory named **appsettings.json** and add the following code.

    :::code language="json" source="includes/dotnet/src/app-auth/GraphAppOnlyTutorial/appsettings.json":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `clientId` | The client ID of your app registration |
    | `tenantId` | The tenant ID of your organization. |

    > [!TIP]
    > Optionally, you can set these values in a separate file named **appsettings.Development.json**.

1. Add your client secret to the [.NET Secret Manager](/aspnet/core/security/app-secrets). In your command-line interface, change the directory to the location of **GraphAppOnlyTutorial.csproj** and run the following commands, replacing *&lt;client-secret&gt;* with your client secret.

    ```dotnetcli
    dotnet user-secrets init
    dotnet user-secrets set settings:clientSecret <client-secret>
    ```

1. Update **GraphAppOnlyTutorial.csproj** to copy **appsettings.json** to the output directory. Add the following code between the `<Project>` and `</Project>` lines.

    ```xml
    <ItemGroup>
      <None Include="appsettings*.json">
        <CopyToOutputDirectory>Always</CopyToOutputDirectory>
      </None>
    </ItemGroup>
    ```

1. Create a file in the **GraphAppOnlyTutorial** directory named **Settings.cs** and add the following code.

    :::code language="csharp" source="includes/dotnet/src/app-auth/GraphAppOnlyTutorial/Settings.cs" id="SettingsSnippet":::

## Design the app

Create a console-based menu.

1. Open **./Program.cs** and replace its entire contents with the following code.

    :::code language="csharp" source="includes/dotnet/src/app-auth/GraphAppOnlyTutorial/Program.cs" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```csharp
    void InitializeGraph(Settings settings)
    {
        // TODO
    }

    async Task DisplayAccessTokenAsync()
    {
        // TODO
    }

    async Task ListUsersAsync()
    {
        // TODO
    }

    async Task MakeGraphCallAsync()
    {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.

## Next step

> [!div class="nextstepaction"]
> [Add app-only authentication](dotnet-app-only-authentication.md)
