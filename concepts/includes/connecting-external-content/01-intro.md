---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

Microsoft Graph connectors let you add your own data into Microsoft Graph and have it power various Microsoft 365 experiences.

This .NET application shows you how to use the Microsoft Graph connectors API to create a custom connector and use it to power Microsoft Search. This tutorial uses a sample data appliance parts inventory for the Contoso Appliance Repair organization.

## Prerequisites

- The [.NET SDK](https://dotnet.microsoft.com/download) installed on your development machine.
- You should have a Microsoft work or school account with the Global administrator role. If you don't have a Microsoft 365 tenant, you might qualify for one through the [Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program); for details, see the [FAQ](/office/developer-program/microsoft-365-developer-program-faq#who-qualifies-for-a-microsoft-365-e5-developer-subscription-). Alternatively, you can [sign up for a 1-month free trial or purchase a Microsoft 365 plan](https://www.microsoft.com/en-us/microsoft-365/try).
- Install the [Entity Framework Core Tools](/ef/core/miscellaneous/cli/dotnet) as a global tool using the following command:

    ```dotnetcli
    dotnet tool install --global dotnet-ef
    ```

- Install a tool to update a SQLite database. For example, the [DB Browser for SQLite](https://sqlitebrowser.org/).
- Download the **ApplianceParts.csv** file from the [Search connector sample repo](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/main/PartsInventoryConnector/ApplianceParts.csv).
