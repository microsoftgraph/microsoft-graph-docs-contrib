---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

Microsoft Graph connectors let you add your own data into Microsoft Graph and have it power various Microsoft 365 experiences.

This .NET application shows you how to use the Microsoft Graph connectors API to create a custom connector and use it to power Microsoft Search. This tutorial uses a sample data appliance parts inventory for the Contoso Appliance Repair organization.

## Prerequisites

- The [.NET SDK](https://dotnet.microsoft.com/download) installed on your development machine.
- You should have a Microsoft work or school account with the Global administrator role. If you don't have a Microsoft account, you can [sign up for the Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program) to get a free Microsoft 365 subscription.
- Install the [Entity Framework Core Tools](/ef/core/miscellaneous/cli/dotnet) as a global tool using the following command:

    ```dotnetcli
    dotnet tool install --global dotnet-ef
    ```

- Install a tool to update a SQLite database. For example, the [DB Browser for SQLite](https://sqlitebrowser.org/).
- Download the **ApplianceParts.csv** file from the [Search connector sample repo](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/main/PartsInventoryConnector/ApplianceParts.csv).
