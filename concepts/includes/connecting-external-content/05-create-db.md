---
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041 -->

In this section you will define the model for the appliance part inventory records and Entity Framework context, and use the `dotnet ef` tool to initialize the database.

## Define the model

1. Create a new directory in the **PartsInventoryConnector** directory named **Data**.

1. Create a file in the **Data** directory named **AppliancePart.cs** and add the following code.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Data/AppliancePart.cs" id="AppliancePartSnippet":::

1. Create a file in the **Data** directory named **ApplianceDbContext.cs** and add the following code.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Data/ApplianceDbContext.cs" id="ApplianceDbContextSnippet":::

1. Create a file in the **Data** directory named **CsvDataLoader.cs** and add the following code.

    :::code language="csharp" source="./snippets/PartsInventoryConnector/Data/CsvDataLoader.cs" id="CsvDataLoaderSnippet":::

## Initialize the database

1. Open your command line interface (CLI) in the directory where **PartsInventoryConnector.csproj** is located.

1. Run the following commands:

   ```dotnetcli
   dotnet ef migrations add InitialCreate
   dotnet ef database update
   ```

> [!NOTE]
> Run the following commands if a schema changes in the CSV file, and reflect those changes into the SQLite database.
>
> ```dotnetcli
>  dotnet ef database drop
>  dotnet ef database update
>  ```
