---
ms.localizationpriority: medium
ms.date : 11/07/2024
---

<!-- markdownlint-disable MD041 -->

In this step, you'll build and run the sample. This code sample creates a new connection, register the schema, and then push items from the [ApplianceParts.csv](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/main/PartsInventoryConnector/ApplianceParts.csv) file into that connection.

1. Open your command-line interface (CLI) in the **PartsInventoryConnector** directory.
2. Use the command `dotnet build` to build the sample.
3. Use the command `dotnet run` to run the sample.
4. Select **1. Create a connection**. Enter a unique identifier, name, and description for that connection.
5. Select **4. Register schema for current connection**, and then wait for the operation to complete.
6. Select **7. Push ALL items to current connection**.

  > [!NOTE]
  > If step 5 results in an error, wait a few minutes, and then select **7. Push ALL items to current connection**.
