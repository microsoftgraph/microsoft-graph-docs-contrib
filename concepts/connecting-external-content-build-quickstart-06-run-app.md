---
title: "Run the application"
description: "Run the application"
localization_priority: Priority
author: mecampos
doc_type: conceptualPageType
---

# Run the application

In this step, you will build and run the sample. This code sample will create a new connection, register the schema, then push items from the [ApplianceParts.csv](https://github.com/microsoftgraph/msgraph-search-connector-sample/blob/master/ApplianceParts.csv) file into that connection.

1. Open your command-line interface (CLI) in the PartsInventoryConnector directory.
2. Use the **dotnet**** build** command to build the sample.
3. Use the **dotnet**** run** command to run the sample.
4. Select 1. **Create a connection** option. Enter a unique identifier, name, and description for that connection.

:::image type="content" source="images/connectors-images/build9.png" alt-text="Run the app create connection":::

5. Select 2. **Register schema** for the current connection option. Then, wait for the operation to complete.

**Note:** If this step results in an error, wait a few minutes and then, select the 3 to push data.

:::image type="content" source="images/connectors-images/build10.png" alt-text="Run the app push data":::

6. Select 3. **Push all items** to current connection option.