---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

Begin by creating a new .NET console project using the [.NET CLI](/dotnet/core/tools/).

1. Open your command-line interface (CLI) in a directory where you want to create the project. Run the following command.

    ```dotnetcli
    dotnet new console -o PartsInventoryConnector
    ```

1. Once the project is created, verify that it works by changing the current directory to the **PartsInventoryConnector** directory and running the following command in your CLI.

    ```dotnetcli
    dotnet run
    ```

    If it works, the app should output `Hello, World!`.

## Install dependencies

Before moving on, add some additional dependencies that you will use later.

- [.NET configuration packages](/dotnet/core/extensions/configuration) to read application configuration from **appsettings.json**.
- [Azure Identity client library for .NET](https://www.nuget.org/packages/Azure.Identity) to authenticate the user and acquire access tokens.
- [Microsoft Graph .NET client library](https://github.com/microsoftgraph/msgraph-sdk-dotnet) to make calls to the Microsoft Graph.
- [Entity Framework packages](/ef) for accessing a local database.
- [CsvHelper](https://www.nuget.org/packages/CsvHelper) for reading CSV files.

Run the following commands in your CLI to install the dependencies.

```Shell
dotnet add package Microsoft.Extensions.Configuration.Binder
dotnet add package Microsoft.Extensions.Configuration.UserSecrets
dotnet add package Azure.Identity
dotnet add package Microsoft.Graph
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Microsoft.EntityFrameworkCore.Sqlite
dotnet add package CsvHelper
```

## Load application settings

In this section you'll add the details of your app registration to the project.

1. Add your client ID, tenant ID, and client secret to the [.NET Secret Manager](/aspnet/core/security/app-secrets). In your command-line interface, change the directory to the location of **PartsInventoryConnector.csproj** and run the following commands, replacing *&lt;client-id&gt;* with your client ID from your app registration, *&lt;tenant-id&gt;* with your tenant ID, and *&lt;client-secret&gt;* with your client secret.

    ```dotnetcli
    dotnet user-secrets init
    dotnet user-secrets set settings:clientId <client-id>
    dotnet user-secrets set settings:tenantId <tenant-id>
    dotnet user-secrets set settings:clientSecret <client-secret>
    ```

1. Create a file in the **PartsInventoryConnector** directory named **Settings.cs** and add the following code.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Settings.cs" id="SettingsSnippet":::

## Design the app

In this section you will create a simple console-based menu.

1. Open **./Program.cs** and replace its entire contents with the following code.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Program.cs" id="ProgramSnippet":::

1. Add the following placeholder methods at the end of the file. You'll implement them in later steps.

    ```csharp
    void InitializeGraph(Settings settings)
    {
        // TODO
    }

    async Task<ExternalConnection?> CreateConnectionAsync()
    {
        // TODO
        throw new NotImplementedException();
    }

    async Task<ExternalConnection?> SelectExistingConnectionAsync()
    {
        // TODO
        throw new NotImplementedException();
    }

    async Task DeleteCurrentConnectionAsync(ExternalConnection? connection)
    {
        // TODO
    }

    async Task RegisterSchemaAsync()
    {
        // TODO
    }

    async Task GetSchemaAsync()
    {
        // TODO
    }

    async Task UpdateItemsFromDatabaseAsync(bool uploadModifiedOnly, string? tenantId)
    {
        // TODO
    }
    ```

This implements a basic menu and reads the user's choice from the command line.
