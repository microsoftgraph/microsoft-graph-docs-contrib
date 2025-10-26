---
title: Build .NET apps with Microsoft Graph
description: In this tutorial, you build a .NET app that uses Microsoft Entra ID for authentication and Microsoft Graph for retrieving data.
author: jasonjoh
ms.author: jasonjoh
ms.topic: how-to
ms.date: 05/30/2025
ms.localizationpriority: medium
---

# Build .NET apps with Microsoft Graph

This tutorial teaches you how to build a .NET console app that uses the Microsoft Graph API to access data on behalf of a user.

> [!NOTE]
> To learn how to use Microsoft Graph to access data using app-only authentication, see this [app-only authentication tutorial](dotnet-app-only.md).

In this tutorial, you will:

- [Get the signed-in user](/graph/api/user-get)
- [List the user's inbox messages](/graph/api/user-list-messages)
- [Send an email](/graph/api/user-sendmail)

> [!TIP]
> As an alternative to following this tutorial, you can download the completed code through the [quick start](https://developer.microsoft.com/graph/quick-start?state=option-dotnet) tool, which automates app registration and configuration. The downloaded code works without any modifications required.
>
> You can also download or clone the [GitHub repository](https://github.com/microsoftgraph/msgraph-training-dotnet) and follow the instructions in the README to register an application and configure the project.

## Prerequisites

Before you start this tutorial, you should have the [.NET SDK](https://dotnet.microsoft.com/download) installed on your development machine.

[!INCLUDE [account-requirements](includes/shared/account-requirements.md)]

> [!NOTE]
> This tutorial was written with .NET SDK version 7.0.102. The steps in this guide might work with other versions, but that hasn't been tested.

[!INCLUDE [user-auth-app-reg-steps](includes/shared/user-auth-app-reg-steps.md)]

## Create a .NET console app

Begin by creating a new .NET console project using the [.NET CLI](/dotnet/core/tools/).

1. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

    ```dotnetcli
    dotnet new console -o GraphTutorial
    ```

1. Once the project is created, verify that it works by changing the current directory to the **GraphTutorial** directory and running the following command in your CLI.

    ```dotnetcli
    dotnet run
    ```

    If it works, the app should output `Hello, World!`.

## Install dependencies

Before moving on, add dependencies that you use later.

- [.NET configuration packages](/dotnet/core/extensions/configuration) to read application configuration from **appsettings.json**.
- [Azure Identity client library for .NET](https://www.nuget.org/packages/Azure.Identity)  to authenticate the user and acquire access tokens.
- [Microsoft Graph .NET client library](https://github.com/microsoftgraph/msgraph-sdk-dotnet) to make calls to the Microsoft Graph.

To install dependencies, run the following commands in your CLI.

```Shell
dotnet add package Microsoft.Extensions.Configuration.Binder
dotnet add package Microsoft.Extensions.Configuration.Json
dotnet add package Microsoft.Extensions.Configuration.UserSecrets
dotnet add package Azure.Identity
dotnet add package Microsoft.Graph
```

## Load application settings

Next, add the details of your app registration to the project.

1. Create a file in the **GraphTutorial** directory named **appsettings.json** and add the following code.

    :::code language="json" source="includes/dotnet/src/user-auth/GraphTutorial/appsettings.json":::

1. Update the values according to the following table.

    | Setting | Value |
    |---------|-------|
    | `clientId` | The client ID of your app registration |
    | `tenantId` | If you chose the option to only allow users in your organization to sign in, change this value to your tenant ID. Otherwise leave as `common`. |

    > [!TIP]
    > Optionally, you can set these values in a separate file named **appsettings.Development.json**, or in the [.NET Secret Manager](/aspnet/core/security/app-secrets).

1. Update **GraphTutorial.csproj** to copy **appsettings.json** to the output directory. Add the following code between the `<Project>` and `</Project>` lines.

    ```xml
    <ItemGroup>
      <None Include="appsettings*.json">
        <CopyToOutputDirectory>Always</CopyToOutputDirectory>
      </None>
    </ItemGroup>
    ```

1. Create a file in the **GraphTutorial** directory named **Settings.cs** and add the following code.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Settings.cs" id="SettingsSnippet":::

## Design the app

Continue by creating a simple console-based menu.

1. Open **./Program.cs** and replace its entire contents with the following code.

    :::code language="csharp" source="includes/dotnet/src/user-auth/GraphTutorial/Program.cs" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You implement them in later steps.

    ```csharp
    void InitializeGraph(Settings settings)
    {
        // TODO
    }

    async Task GreetUserAsync()
    {
        // TODO
    }

    async Task DisplayAccessTokenAsync()
    {
        // TODO
    }

    async Task ListInboxAsync()
    {
        // TODO
    }

    async Task SendMailAsync()
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
> [Add user authentication](dotnet-authentication.md)
